<?php
    session_start();

    $host="localhost";
    $database="gameshop";
    $user="Wolfhang";
    $password="bmthgaming1";

    $idUser = $_SESSION['idUser'];

    $mysqli = new mysqli($host, $user, $password, $database);
    $query = "DELETE FROM CART WHERE (idUser = $idUser)";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../cart.php');
?>