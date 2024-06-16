<?php
trait DonhangModel
{
    //Hàm liệt kê các bản ghi có phân  trang
    public function modelRead($recordPerPage)
    {
       //tổng số bản ghi
        $total = $this->modelTotal();
        //số trang
        $numPage = ceil($total / $recordPerPage);
        //lấy số trang hiện tại truyền vào url
        $page = isset($_GET["p"]) && $_GET["p"] > 0 ? $_GET["p"] - 1 : 0;
        $from = $page * $recordPerPage;
        $conn = Connection::getInstance();
        $query = $conn->query("select * from orders order by id desc limit $from, $recordPerPage");
        return $query->fetchAll();
    }
    //ham xoa order
    public function deleteOrder($id)
    {
        $conn = Connection::getInstance();
        $conn->query("delete from orders where id=$id ");
        $conn->query("delete from orderdetails where order_id=$id ");
    }
    //hàm tính tổng số bản ghi
    public function modelTotal()
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select id from orders");
        return $query->rowCount();
        
    }
    //lấy một bản ghi từ bảng orders
    public function modelGetOrders($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from orders where id = $id");
        return $query->fetch();
    }
    //lấy một bản ghi trong bảng customers
    public function modelGetCustomers($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from customers where id = $id");
        //tra ve mot ban ghi
        return $query->fetch();
    }
    //lấy một bản ghi trong bảng products
    public function modelGetProducts($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from product where idPro = $id");
        //tra ve mot ban ghi
        return $query->fetch();
    }
    //Xác nhận giao hàng
    public function deliveryModel($id)
    {
        $conn = Connection::getInstance();
         $conn->query("update orders set status = 1 where id = $id");
        //$query->execute();
    }
    //lấy danh sách trong bảng orderdetails
    public function modelListOrderDetails($id)
    {
        $conn = Connection::getInstance();
        $query = $conn->query("select * from orderdetails where order_id = $id");
        return $query->fetchAll();
    }
}
