<?php
include "Model/DanhmucModel.php";
class DanhmucController extends Controller
{
    use DanhmucModel;
    public function index()
    {
        //nếu đăng nhập rồi thì mới load view ra không thì sẽ load về trang login
        if (!isset($_SESSION['admin_email'])) {
            $this->loadView("pages-login.php");
        } else {

            $data = $this->modelRead();
            //goi view, truyen du lieu ra view
            $this->loadView("quanlydanhmuc.php", ["data" => $data]);
        }
    }
    //load view tạo danh mục
    public function create()
    {
        $this->loadView("Adddanhmuc.php");
    }
    //Tạo danh mục
    public function createPost()
    {
        $this->modelCreate();
        header("Location:index.php?controller=danhmuc");
    }
    //xóa danh mục
    public function delete()
    {
        $id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
        $this->modelDelete($id);
        //quay tro lai mvc categories
        header("location:index.php?controller=danhmuc");
    }
}
