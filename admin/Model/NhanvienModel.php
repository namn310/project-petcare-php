<?php
trait NhanvienModel
{
    public function modelGetRecord($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("SELECT * from nhanvien where idNV=$id limit 1");
        return $query->fetch();
    }
    //Thêm nhân viên
    public function modelCreate()
    {
        $name = $_POST['nameNV'];
        $email = $_POST['emailNV'];
        $local = $_POST['localNV'];
        $phone = $_POST['phoneNV'];
        $dateNV = $_POST['dateNV'];
        $CMND = $_POST['CMND'];
        $sex = $_POST['sex'];
        $chucvu = $_POST['chucvuNV'];
        //xulyhinhanh
        $hinhanh = $_FILES['imgNV']['name'];
        $hinhanh_tmp = $_FILES['imgNV']['tmp_name'];
        $hinhanh = time() . '_' . $hinhanh;
        $dateAdd = date("d-m-y");

        $conn = Connection::getInstance();
        $conn->exec('INSERT INTO nhanvien(tenNV, anhNV, diachi, birth, sex, phone, chucvu, email,cmnd,dateadd) VALUES ("' . $name . '","' . $hinhanh . '","' . $local . '","' . $dateNV . '","' . $sex . '","' . $phone . '","' . $chucvu . '","' . $email . '","' . $CMND . '","' . $dateAdd . '")');
        move_uploaded_file($hinhanh_tmp, "../assets/img-nhanvien/" . $hinhanh);
    }
    public function delete($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->prepare("delete from nhanvien where idNV=:id");
        $query->execute([':id' => $id]);
    }
    public function modelChange($id)
    {
        $name = $_POST['nameNV'];
        $email = $_POST['emailNV'];
        $local = $_POST['localNV'];
        $phone = $_POST['phoneNV'];
        $dateNV = $_POST['dateNV'];
        $CMND = $_POST['CMND'];
        $sex = $_POST['sex'];
        $chucvu = $_POST['chucvuNV'];
        //$dateAdd = date("d-m-y");
        //lấy biến connect
        $conn = Connection::getInstance();
        $updateNV = $conn->prepare("update nhanvien set tenNV=:name,diachi=:local,birth=:birth,sex=:sex,phone=:phone,chucvu=:chucvu,email=:email,cmnd=:cmnd where idNV=:id ");
        $updateNV->execute([':name' => $name, ':local' => $local, ':birth' => $dateNV, ':sex' => $sex, ':phone' => $phone, ':chucvu' => $chucvu, ':email' => $email, ':cmnd' => $CMND,':id'=>$id]);

        if ($_FILES['imgNV']['name'] != "") {
            //lấy hình ảnh của product
            $oldImg = $conn->query("select anhNV from nhanvien where idNV=$id");
            if ($oldImg->rowCount() > 0)
                $oldImgSelect = $oldImg->fetch();
            if (file_exists("assets/img-nhanvien/" . $oldImgSelect->hinhanh))
                unlink("assets/img-nhanvien/" . $oldImgSelect->hinhanh);
            //xử lý hình ảnh
            $hinhanh = time() . '_' . $_FILES['imgNV']['name'];
            $hinhanh_tmp = $_FILES['imgNV']['tmp_name'];
            move_uploaded_file($hinhanh_tmp, "../assets/img-nhanvien/" . $hinhanh);
            $query = $conn->prepare("update nhanvien set anhNV=:_hinhanh where idNV=:_id");
            $query->execute([":_hinhanh" => $hinhanh, ":_id" => $id]);
        }
    }
}
