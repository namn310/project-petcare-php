<?php
trait loginModel
{
    //xử lý đăng nhập
    public function modelLogin()
    {
        /*$email = $_POST["email"];
        $password = $_POST["password"];
        $password = md5($password);
        //echo $password;
        //lay bien ket noi csdl
        $conn = Connection::getInstance();
        //chuan bi cau truy van			
        $query = $conn->query("select email,pass from admin where email='$email'");
        if ($query->rowCount() > 0) {
            $record = $query->fetch();
            if ($record->pass == $password) {
                $_SESSION["email"] = $email;
                header("location:index.php");
            } else {
                echo '<script>alert("Bạn cần nhập đúng mật khẩu")</script>';
            }
        } else {
            header("location:index.php?controller=login");
        }
    }*/
        $email = $_POST["email"];
        $password = $_POST["password"];
        $password1 = md5($password);
        $conn = Connection::getInstance();
        $query = $conn->prepare("select * from admin where pass=:password and email=:email ");
        $query->execute(["email" => $email, "password" => $password1]);
        if ($query->rowCount() > 0) {
            //---
            $record = $query->fetch();
            //---
            $_SESSION["admin_email"] = $record->email;
            $_SESSION["admin_id"] = $record->id;
        } else
            echo ('<script>alert("Email hoặc mật khẩu không chính xác !")</script>');
        header("location:index.php?controller=login");
    }
    public function modelRegister()
    {
        $email = $_POST["email_signup"];
        $name = $_POST["name"];
        $password = $_POST["password"];
        if (!filter_var($email, FILTER_VALIDATE_EMAIL) || !preg_match("/^[A-Za-z\sAÀẢÃÁẠĂẰẲẴẮẶÂẦẨẪẤẬBCDĐEÈẺẼÉẸÊỀỂỄẾỆFGHIÌỈĨÍỊJKLMNOÒỎÕÓỌÔỒỔỖỐỘƠỜỞỠỚỢPQRSTUÙỦŨÚỤƯỪỬỮỨỰVWXYỲỶỸÝỴZaàảãáạăằẳẵắặâầẩẫấậbcdđeèẻẽéẹêềểễếệfghiìỉĩíịjklmnoòỏõóọôồổỗốộơờởỡớợpqrstuùủũúụưừửữứựvwxyỳỷỹýỵz]+$/", $name) || !preg_match("/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$/", $password)) {
            header("location:index.php?controller=login&action=register");
        } else {
            $conn = Connection::getInstance();
            $check = $conn->prepare("select * from admin where email=:_email");
            $check->execute([":_email" => $email]);
            if ($check->rowCount() > 0) {
                echo '<script>return alert("Email đã tồn tại !")</script>';
                header("location:index.php?controller=login&action=register");
            } else {

                $password = md5($password);
                $query1 = $conn->prepare("insert into admin (name,email,pass) values (:name,:email,:pass)");
                $query1->execute([':name' => $name, ':email' => $email, ':pass' => $password]);
                echo '<script>alert("Đăng ký thành công !")</script>';
                header("location:index.php?controller=login");
            }
            //di chuyen den trang login

        }
    }
}
