<?php

require_once('DB.php');
require_once('products.php');

//$objProduct = new Products();
//
//$insert = $objProduct->setProduct('ABCDE', 'Chucrut', 19);
//echo $insert;

$db = DB::getConnection();

print_r($db);