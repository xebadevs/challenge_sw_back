<?php

require_once('DB.php');
require_once('products.php');

//$objProduct = new Products();
//
//$insert = $objProduct->setProduct('ABCDE', 'Chucrut', 19);
//echo $insert;

$db = DB::getConnection();

var_dump($db);

echo '<hr>';

$sql = 'SELECT * FROM products';
$stmt = $db->prepare($sql);
$stmt->execute();

while ($producto = $stmt->fetch()) {
    echo 'SKU: ' . $producto['sku'] . '<br>';
    echo 'Name: ' . $producto['name'] . '<br>';
    echo 'Price: ' . $producto['price'] . '<br>';
}