<?php

trait DanhmucModel
{
    //lấy danh mục
    public function modelRead()
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from danhmuc order by id_danhmuc ");
        $result = $query->fetchAll();
        return $result;
    }
    // tinh tong so ban ghi
    public function modelTotal()
    {
        //lay bien ket noi
        $conn = Connection::getInstance();
        $query = $conn->query("select id from danhmuc");
        //ham rowCount: dem so ket qua tra ve
        return $query->rowCount();
    }
    //tạo danh mục
    public function modelCreate()
    {
        $conn = Connection::getInstance();
        $name = $_POST['nameDM'];
        $dateAdd = date('d-m-y');
        $query = $conn->prepare("INSERT INTO danhmuc set tendanhmuc=:_danhmuc,dateadd=:_date");

        $query->execute([":_danhmuc" => $name, ":_date" => $dateAdd]);
    }
    //xóa danh mục
    public function modelDelete($id)
    {
        $conn = Connection::getInstance();
        $conn->query("DELETE from danhmuc where id_danhmuc=$id");
    }
}
