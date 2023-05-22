<?php
    require("./includes/connexion.php");
    require("./includes/entete.php");
 ?>   
    
 <?php   
    function ajouter($pompiers, $casernes, $engins)
{
    if(require("connexion.php")) {
        $req = $db->prepare("INSERT INTO typeengin (IdTypeEngin, LblEngincol, 'image') VALUES (?, ?, ?,)");
        $req = $db->prepare("INSERT INTO pompier (`Matricule`, NomPompier, PrenomPompier, DateNaissPompier, TelPompier, SexePompier, IdGrade) VALUES (?, ?, ?, ?, ?, ?)");
        $req = $db->prepare("INSERT INTO caserne (IdCaserne, NomCaserne) VALUES (?, ?, ?,)");

        $req->execute(array($pompier, $casernes, $engins));

        $req->closeCursor();
    }
}  
    
?>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<?php    
    
require("./includes/pieddepage.php");

?>