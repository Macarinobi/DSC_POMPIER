<?php
    $hote = "127.0.0.1:8888";
    $bd = "pompier";
    $login = "root";
    $motDePasse ="";

    try {
        $bd = new PDO("mysql:host =hote;dbname=$bd;charset=utf8",$login,$motDePasse);
        $bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }


    if(!isset($_SESSION['active'])) {
        session_start();
    }
?>