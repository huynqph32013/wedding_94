<?php
include "Views/layout/header.php";
// include "content.php";
$url = isset($_GET['url']) == true ? $_GET['url'] : "/";
switch ($url) {
    case '/':
        include 'Views/home.php';
        break;
    case 'value':
        # code...
        break;
    case 'value':
        # code...
        break;
    case 'value':
        # code...
        break;

    default:
        # code...
        break;
}
include "Views/layout/footer.php";
