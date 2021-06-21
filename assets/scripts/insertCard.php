<?php
    session_start();

    $cardNumber=$_POST['cardNumber'];
    $cardExp=$_POST['cardExp'];
    $cardCVV=$_POST['cardCVV'];
    $idUser=$_SESSION['idUser'];

    $host="localhost";
    $database="gameshop";
    $user="Wolfhang";
    $password="bmthgaming1";

    $mysqli = new mysqli($host, $user, $password, $database);

    $query = "INSERT INTO CARDS (idUser, cardNumber, cardExp, cardCVV) VALUES ('$idUser','$cardNumber','$cardExp','$cardCVV')";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../shop.php');
?>