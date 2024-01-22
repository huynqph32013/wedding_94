<?php
$url=isset($_GET['url']) ? $_GET['url'] : '/';
require_once "Controllers/CustomerController.php";
require_once "Models/Customer.php";
require_once "Views/layouts/header.php";
require_once "Views/layouts/sidebar.php";

$customerController=new CustomerController();
switch ($url){
    case '/':
        require_once "Views/layouts/content.php";
        break;
//        customer (user)
    case 'list_customer':
        $customerController->listCustomer();
        break;
    case 'add_customer':
        $customerController->addCustomerController();
        break;
    case 'updateUser':
        $customerController->updateCustomerController();
        break;
    case 'detail_customer':
        $customerController->detailCustomer();
        break;
    case 'deleteUser':
        $customerController->deleteCustomerController();
        break;
    case 'list_post':
        require_once "Views/posts/ListPosts.php";
        break;
}
require_once "Views/layouts/footer.php";