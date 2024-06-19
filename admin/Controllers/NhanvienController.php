<?php
include("Model/NhanvienModel.php");
class NhanvienController extends Controller
{

    use NhanvienModel;
    public function index()
    {
        //nếu đăng nhập rồi thì mới load view ra không thì sẽ load về trang login
        if (!isset($_SESSION['admin_email'])) {
            $this->loadView("pages-login.php");
        } else {
            $this->loadView("Quanlynhanvien.php");
        }
    }
    //load view thêm nhân viên
    public function create()
    {
        $this->loadView("Addnhanvien.php");
    }
    // chức năng tạo mới nhân viên
    public function createPost()
    {
        $this->modelCreate();
        header("Location:index.php?controller=nhanvien");
    }
    // xóa nhân viên
    public function delete()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        $conn = Connection::getInstance();
        $query = $conn->prepare("delete from nhanvien where idNV=:id");
        $query->execute([':id' => $id]);
        header("Location:index.php?controller=nhanvien");
    }
    //thay đổi thông tin nhân viên
    public function change()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
        }
        $record = $this->modelGetRecord($id);
        $this->loadView("ChangeNV.php", ["record" => $record]);
    }
    public function changePost()
    {
        $id = isset($_GET['id']) && is_numeric($_GET['id']) ? $_GET['id'] : 0;
        $this->modelChange($id);
        header("Location:index.php?controller=nhanvien");
    }
}
