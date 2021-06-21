<?php
    session_start();

    $host="localhost";
    $database="gameshop";
    $user="Wolfhang";
    $password="bmthgaming1";

    $idProduct = $_POST['idProduct'];
    $idUser = $_SESSION['idUser'];

    $mysqli = new mysqli($host, $user, $password, $database);

    $query = "INSERT INTO CART (idUser, idProduct) VALUES ('$idUser', '$idProduct')";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../cart.php');
?>