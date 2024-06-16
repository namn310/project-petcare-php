<?php
include("../Project-petcare-php/user/Model/ServiceModel.php");
class ServiceController extends Controller
{
    use ServiceModel;
    public function index()
    {
        $data = $this->getService();
        $this->loadView("../../Project-petcare-php/user/Views/service.php", ['data' => $data]);
    }
}
