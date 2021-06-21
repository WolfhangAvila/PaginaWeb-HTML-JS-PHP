<?php
    session_start();

    $host="localhost";
    $database="gameshop";
    $user="Wolfhang";
    $password="bmthgaming1";

    $productURL = $_POST['URL'];
    $productDescription = $_POST['Description'];
    $productPrice = $_POST['Price'];
    $productStock = $_POST['Stock'];

    $mysqli = new mysqli($host, $user, $password, $database);

    $query = "INSERT INTO PRODUCTS (productDescription, productImageURL, productPrice, productStock) VALUES ('$productDescription', '$productURL', '$productPrice', '$productStock')";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../addItem.php');
?>