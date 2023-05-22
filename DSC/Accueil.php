<?php
    require("./includes/connexion.php");
    require("./includes/entete.php");
 ?>   
    
   
    <div class="container d-flex justify-content-center">
<div id="carouselExample" class="carousel slide">

    <div class="carousel-inner ">
    <center>
        <div class="carousel-item active">
            <img src="./images/SLIDE/slide 1.png" class="d-block w-100" alt="...">
        </div>
    </center>
    <center>
        <div class="carousel-item active">
            <img src="./images/SLIDE/slide 2.jpg" class="d-block w-100" alt="...">
        </div>
    </center>
    <center>
        <div class="carousel-item active">
            <img src="./images/SLIDE/slide 3.jpg" class="d-block w-100" alt="...">
        </div>
    </center>
   
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
<?php    
    
require("./includes/pieddepage.php");

?>