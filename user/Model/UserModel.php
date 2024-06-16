<?php
trait UserModel
{
    //đổi thông tin user
    public function update($id)
    {
        $conn = Connection::getInstance();
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $local = $_POST['local'];
        $query = $conn->prepare("update customers set name=:_name, address=:_address,sodienthoai=:_phone ");
        $query->execute([":_name" => $name, ":_address" => $local, ":_phone" => $phone]);
        
    }
}
