<?php
trait ProductModel
{
    public function modelRead()
    {
        $conn = Connection::getInstance();
        $id_danhmuc = isset($_GET['idDM']) && is_numeric($_GET['idDM']) ? $_GET['idDM'] : 0;
        $query = $conn->query("select * from product where id_danhmuc=$id_danhmuc");
        $result = $query->fetchAll();
        return $result;
    }
    public function getDanhMuc($id_danhmuc)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select tendanhmuc from danhmuc where id_danhmuc = $id_danhmuc");
        $a = $query->fetchAll(PDO::FETCH_ASSOC);
        foreach ($a as $result)
            return $result['tendanhmuc'];
    }
    public function modelGetRecord($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from product where idPro=$id");
        return $query->fetch();
    }
    public function modelComment($idPro, $idCus)
    {
        $comment = $_POST['comment'];
        $timeCreate = date('d-m-y');
        $conn = Connection::getInstance();
        $query = $conn->prepare("insert into comment set noidung=:_noidung,timeCreate=:_timeAdd,id_product=:_idPro,id_user=:_id_Cus");
        $query->execute([':_noidung' => $comment, ':_idPro' => $idPro, ':_id_Cus' => $idCus, ':_timeAdd' => $timeCreate]);
    }
    public function getComment($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->prepare("select * from comment where id_product=:id");
        $query->execute([':id' => $id]);
        return $query->fetchAll();
    }
}
