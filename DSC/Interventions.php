<?php
    require("./includes/connexion.php");
    require("./includes/entete.php");
 ?>   
    
    
    <?php

// Tableau d'interventions
$interventions = array();

// Ajouter une intervention
if (isset($_POST['ajouter'])) {
    $nouvelleIntervention = array(
        'id' => $_POST['id'],
        'date' => $_POST['date'],
        'description' => $_POST['description'],
        'technicien' => $_POST['technicien'],
    );
    $interventions[] = $nouvelleIntervention;
}

// Supprimer une intervention
if (isset($_GET['supprimer'])) {
    $idIntervention = $_GET['supprimer'];
    if (array_key_exists($idIntervention, $interventions)) {
        unset($interventions[$idIntervention]);
    }
}

?>

<!-- Formulaire pour ajouter une intervention -->
<form method="post">
    <label>ID :</label>
    <input type="text" name="id" required><br>
    <label>Date :</label>
    <input type="date" name="date" required><br>
    <label>Description :</label>
    <input type="text" name="description" required><br>
    <label>Technicien :</label>
    <input type="text" name="technicien" required><br>
    <button type="submit" name="ajouter">Ajouter</button>
</form>

<!-- Affichage des interventions -->
<?php foreach ($interventions as $id => $intervention) { ?>
    <div>
        <p>ID : <?php echo $intervention['id']; ?></p>
        <p>Date : <?php echo $intervention['date']; ?></p>
        <p>Description : <?php echo $intervention['description']; ?></p>
        <p>Technicien : <?php echo $intervention['technicien']; ?></p>
        <a href="?supprimer=<?php echo $id; ?>">Supprimer</a>
    </div>
    <br>
<?php } ?>
    
    
    
    
    
    
   
    
<?php    
    
require("./includes/pieddepage.php");

?>