<?php
require_once "BaseModels.php";
class Customer extends BaseModels {
    public function getCustomer(){
        $sql='select * from user';
        return parent::dataProcess($sql);
    }

    public function getOneCustomer($id){
        $sql="select * from user where id=$id";
        return parent::dataProcess($sql,false);
    }

    public function addCustomer($name,$email,$pass,$phone,$address){
        $sql="insert into user (name ,email,pass_word,phone,address) value ('$name','$email','$pass','$phone','$address');";
        return parent::dataProcess($sql);
    }

    public function updateCustomer($id_user,$name,$email,$pass,$phone,$address){
        $sql="UPDATE user SET name = '$name', email = '$email',pass_word='$pass', phone = '$phone',address='$address' WHERE id = '$id_user'";
        parent::dataProcess($sql);
    }

    public function deleteCustomer($id){
        $sql="DELETE FROM `user` WHERE `user`.`id` = $id";
        return parent::dataProcess($sql);
    }
}
