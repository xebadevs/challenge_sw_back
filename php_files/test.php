<?php

require_once('connection.php');
require_once('products.php');

$objProduct = new Products();

$insert = $objProduct->setProduct('ABCDE', 'Chucrut', 19);
echo $insert;