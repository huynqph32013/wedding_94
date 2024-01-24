<?php
class CategoriesController{
    protected $categories;
    public function __construct()
    {
        $this->categories=new Categories();
    }
    
}