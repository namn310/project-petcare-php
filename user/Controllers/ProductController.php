<?php
include("../Project-petcare-php/user/Model/ProductModel.php");
class ProductController extends Controller
{
    use ProductModel;
    public function index()
    {
        $data = $this->modelRead();

        $this->loadView("../../Project-petcare-php/user/Views/product.php", ["data" => $data]);
    }
    //Lấy thông tin danh mục để đổ ra view
    public function danhmuc()
    {
        $data = $this->modelRead();
        $this->loadView("../../Project-petcare-php/user/Views/product.php", ["data" => $data]);
    }
    //chi tiết sản phẩm
    public function detail()
    {
        $id = isset($_GET["id"]) && is_numeric($_GET["id"]) ? $_GET["id"] : 0;
        $record = $this->modelGetRecord($id);
        $comment = $this->getComment($id);
        $this->loadView("../../Project-petcare-php/user/Views/product-detail.php", ["record" => $record, "comment" => $comment]);
    }
    //Bình luận sản phẩm
    public function addComment()
    {
        $idPro = isset($_GET["idPro"]) && is_numeric($_GET["idPro"]) ? $_GET["idPro"] : 0;
        $idCus = isset($_GET["idUs"]) && is_numeric($_GET["idUs"]) ? $_GET["idUs"] : 0;
        $this->modelComment($idPro, $idCus);
        header("location:index.php?controller=product&action=detail&id=" . $idPro);
    }
}
