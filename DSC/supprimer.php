<?php
    require("./includes/connexion.php");
    require("./includes/entete.php");
    

    $req = $bd->prepare('SELECT * FROM  pompier');
    $req = $bd->prepare('SELECT * FROM  caserne');
    $req = $bd->prepare('SELECT * FROM  engin');                    
    
    try {
        $req->execute();
        $resultat = $req->fetchAll();
    } catch(PDOException $e) {
        echo $e->getMessage();
    }
?>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
     <a class="navbar-brand" href="#">DLC POMPIER</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
<?php foreach($resultat as $delete){ ?>
        <li class="nav-item">
        <img src="./images/<?=$delete['image']?>" class="card-img-top" alt="...">
        </li>

  <div class="mb-3">
     <label for="exampleInputText1" class="form-label"><?=$delete['image']?>"</label>
    <input type="textarea" class="form-control" name="supprimer"  required>
  </div>
  <?php } ?> 
        </ul>
    </div>
  </div>
</nav>

<div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

      <form methode="post">
  
  <
    </div>
</div>
    




  <button type="submit" name="Supprimer" class="btn btn-primary">Supprimer</button>
</form>

<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

<?php foreach($pompiers as $pompier): ?>
        <div class="col">
          <div class="card shadow-sm">
            
            <img src="<?= $pompier->image ?>"></svg>

            <h3><?= $pompier->id ?></h3>
           
            <div class="card-body">
            
               
        
              
            </div>
          </div>
        </div>
       <?php endforeach; ?>
    </div>
</body>
</html>

<?php

    if (isset($_POST['supprimer']))
    {
      if(isset($_POST['supprimer']))
        {
        if(!empty($_POST['supprimer']) AND is_numeric($_POST['supprimer']))
        {
            $delete = htmlspecialchars(strip_tags($_POST['supprimer']));
        
                try 
                {
                    supprimer($idpompier);
                } 
                    catch (Exception $e)
                {
                    $e->getMessage();  
                }


        
        }

            
           

        
        }
    }
require("./includes/pieddepage.php");
?>

