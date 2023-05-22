<?php
    require("./includes/connexion.php");
    require("./includes/entete.php");
      
    $req = $bd->prepare('SELECT * FROM caserne');
    
    try {
        $req->execute();
        $resultat = $req->fetchAll();
    } catch(PDOException $e) {
        echo $e->getMessage();
    }
?>

<div class="album py-5 bg-body-tertiary">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

        <?php foreach($resultat as $ligne){ ?>
            <div class="col">
                <div class="card shadow-sm">
                <img src="./images/<?=$ligne['image']?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?=$ligne['idTypeEngin'] ?></h5>
                        <p class="card-text"><?=$ligne['LblEngincol'] ?></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-primary">Supprimer</button>
                                <button type="button" class="btn btn-sm btn-outline-primary">Ajouter</button>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        
            <?php } ?>

        </div>
    </div>
</div>
    
    
    
    
    
    
<?php    
    
require("./includes/pieddepage.php");

?>