<?php
    include("./includes/connexion.php");

    $req = $bd->prepare('SELECT * FROM caserne');
    
    try {
        $req->execute();
        $resultat = $req->fetchAll();
    } catch(PDOException $e) {
        echo $e->getMessage();
    }

    require_once("./includes/entete.php");
?>
