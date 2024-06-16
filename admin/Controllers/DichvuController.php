<?php
include "Model/DichvuModel.php";
class DichvuController extends Controller
{

    use DichvuModel;
    //load view 
    public function index()
    {
        //nếu đăng nhập rồi thì mới load view ra không thì sẽ load về trang login
        $data = $this->getDV();
        $this->loadView("Quanlydichvu.php", ['data' => $data]);
    }
    //load view tạo dịch vụ
    public function create()
    {
        $this->loadView("Adddichvu.php");
    }
    //tạo dịch vụ
    public function createPost()
    {
        $this->createDV();
        header("Location:index.php?controller=dichvu");
    }
    //xem chi tiết dịch vụ
    public function detail()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $data = $this->getDetail($id);
        $this->loadView('DichvuDetail.php', ['data' => $data]);
    }
    //load view thay đổi dịch vụ
    public function change()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $data = $this->getDetail($id);
        $this->loadView('ChangeDichvu.php', ['data' => $data]);
    }
    // function cập nhật lại dịch vụ
    public function changePost()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->update($id);
        echo ('<script>alert("Thay đổi thành công")</script>');
        header("Location:index.php?controller=dichvu");
    }
    // xóa dịch vụ
    public function delete()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $this->deleteDV($id);
        echo ('<script>alert("Xóa thành công thành công")</script>');
        header("Location:index.php?controller=dichvu");
    }
}
