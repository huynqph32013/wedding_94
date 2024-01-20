<?php
class CustomerController{
    protected $customer;
    public function __construct()
    {
        $this->customer= new Customer();
    }
    public function listCustomer(){
        $customer=$this->customer->getCustomer();
        include_once "Views/Customer/ListCostomer.php";
    }
    public function addCustomerController(){
        $result='';
        $error=1;
        if(isset($_POST['submit'])){
            $name=$_POST['name'];
            $email=$_POST['email'];
            $pass=$_POST['pass'];
            $phone=$_POST['phone'];
            $address=$_POST['address'];
            if(empty($name)){
                $error_name='Bạn phải nhập tên';
                $error=0;
            }
            if(empty($email)){
                $error_email='Bạn phải nhập email';
                $error=0;
            }
            if(empty($pass)){
                $error_pass='Bạn phải nhập mật khẩu';
                $error=0;
            }
            if(empty($phone)){
                $error_phone='Bạn phải nhập số điện thoại';
                $error=0;
            }
            if(empty($address)){
                $error_address='Bạn phải nhập địa chỉ';
                $error=0;
            }
            if($error){
                $result='Nhập thành công';
                $this->customer->addCustomer($name,$email,$pass,$phone,$address);
            }
        }
        require_once "Views/Customer/AddCostomer.php";
    }

    public function detailCustomer()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $customer = $this->customer->getOneCustomer($id);
            require_once "Views/Customer/UpdateCostomer.php";
        }
    }

    public function updateCustomerController(){
        $id=$_GET['id'];
        $error=1;
        if(isset($_POST['submit'])){
            $name=$_POST['name'];
            $email=$_POST['email'];
            $pass=$_POST['pass'];
            $phone=$_POST['phone'];
            $address=$_POST['address'];
            if(empty($name)){
                $error_name='Bạn phải nhập tên';
                $error=0;
            }
            if(empty($email)){
                $error_email='Bạn phải nhập email';
                $error=0;
            }
            if(empty($pass)){
                $error_pass='Bạn phải nhập mật khẩu';
                $error=0;
            }
            if(empty($phone)){
                $error_phone='Bạn phải nhập số điện thoại';
                $error=0;
            }
            if(empty($address)){
                $error_address='Bạn phải nhập địa chỉ';
                $error=0;
            }
            if($error){
                $result='Sửa thành công';
                echo $phone;
                $this->customer->updateCustomer($id,$name,$email,$pass,$phone,$address);
                ob_clean();
                header("Location: ?url=list_customer");
            }
        }
    }

    public function deleteCustomerController(){
        $id=$_GET['id'];
        $this->customer->deleteCustomer($id);
        $customer=$this->customer->getCustomer();
        require_once "Views/Customer/ListCostomer.php";
    }
}
