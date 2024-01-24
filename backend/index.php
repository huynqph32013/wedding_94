<?php
$url=isset($_GET['url']) ? $_GET['url'] : '/';
// Customer Controller
require_once "Controllers/CustomerController.php";
// Categories Controller
require_once "Controllers/CategoriesController.php";
// Customer Models
require_once "Models/Customer.php";
// Categories Models
require_once "Models/Categories.php";
//layout
require_once "Views/layouts/header.php";
require_once "Views/layouts/sidebar.php";

$customerController=new CustomerController();
$categoriesController=new CategoriesController();
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
//      posts
    case 'list_post':
        require_once "Views/posts/ListPosts.php";
        break;
//      categories
    case 'list_categories':
        
        break;
}
require_once "Views/layouts/footer.php";