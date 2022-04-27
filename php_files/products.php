<?php

require_once('DB.php');

class Products{
    private $strSku;
    private $strName;
    private $intPrice;
    private $connection;

//    public function __construct($sku, $name, $price)
    public function __construct()
    {
        $this->connection = new Connection();
        $this->connection = $this->connection->connect();
//        $this->sku = $sku;
//        $this->name = $name;
//        $this->price = $price;
    }

    public function setProduct($sku, $name, $price){
        $this->strSku = $sku;
        $this->strName = $name;
        $this->intPrice = $price;

        $sql = "SELECT * FROM products";
        $insert = $this->connection->prepare($sql);
        $arrData = array($this->strSku, $this->strName, $this->intPrice);
        $resInsert = $insert->execute($arrData);
        return $resInsert;
    }
}