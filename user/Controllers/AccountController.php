<?php
include "../Project-petcare-php/user/Model/AccountModel.php";
class AccountController extends Controller
{
    use AccountModel;
    public function index()
    {
        $this->loadView("../../Project-petcare-php/user/Views/login.php");
    }
    public function Login()
    {
        if ($this->LoginModel() == 1) {
            header("location:index.php");
        } else {
            header("location:index.php?controller=account");
        }
    }
    public function logOut()
    {
        unset($_SESSION["customer_email"]);
        unset($_SESSION["customer_id"]);
        header("location:index.php?controller=home");
    }
}
