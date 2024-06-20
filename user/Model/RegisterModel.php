<?php
trait RegisterModel
{
    public function modelRegister()
    {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $password = $_POST["pass"];
        $phone = $_POST["phone"];
        $local = $_POST["local"];
        if (!filter_var($email, FILTER_VALIDATE_EMAIL) || !preg_match("/^[A-Za-z\sAÀẢÃÁẠĂẰẲẴẮẶÂẦẨẪẤẬBCDĐEÈẺẼÉẸÊỀỂỄẾỆFGHIÌỈĨÍỊJKLMNOÒỎÕÓỌÔỒỔỖỐỘƠỜỞỠỚỢPQRSTUÙỦŨÚỤƯỪỬỮỨỰVWXYỲỶỸÝỴZaàảãáạăằẳẵắặâầẩẫấậbcdđeèẻẽéẹêềểễếệfghiìỉĩíịjklmnoòỏõóọôồổỗốộơờởỡớợpqrstuùủũúụưừửữứựvwxyỳỷỹýỵz]+$/", $name) || !preg_match("/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/", $password) || !preg_match("/^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/", $phone)) {
            echo ('<script>Vui lòng kiểm tra lại thông tin</script>');
            header("location:index.php?controller=register");
        } else {
            //kiem tra neu email khong ton tai trong table customers thi insert
            $conn = Connection::getInstance();
            $check = $conn->prepare("select * from customers where email=:_email");
            $check->execute([":_email" => $email]);
            if ($check->rowCount() > 0) {
                $message = 'Email đã tồn tại.';
                echo '<script type="text/javascript">alert("' . $message . '");</script>';
                header("location:index.php?controller=register");
            } else {
                $password = md5($password);
                $query1 = $conn->prepare("insert into customers (name,address,email,pass,sodienthoai) values (:name,:local,:email,:pass,:phone)");
                //$query = $conn->prepare("insert into customers values name=:name,email=:email,pass=:pass,address=:address,sodienthoai=:phone");
                $query1->execute([':name' => $name, ':email' => $email, ':pass' => $password, ':local' => $local, 'phone' => $phone]);
                //di chuyen den trang login
                header("location:index.php?controller=account");
            }
        }
    }
}
