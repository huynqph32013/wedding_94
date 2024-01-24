<?php
require_once "BaseModels.php";
class Categories extends BaseModels {
    public function getAllCategories(){
        $sql='select * from categories';
        return parent::dataProcess($sql);
    }

    public function addCategories($name_categories){
        $sql="insert into categories (name_categories) value ('$name_categories');";
        return parent::dataProcess($sql);
    }

    public function updateCategories($id,$name_categories){
        $sql="UPDATE categories SET name_categories = '$name_categories' where id='$id";
        parent::dataProcess($sql);
    }

    public function deleteCategories($id){
        $sql="DELETE FROM `categories` WHERE `categories`.`id` = $id";
        return parent::dataProcess($sql);
    }
}