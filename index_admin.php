<?php 
require 'layout/admin_header.php';
require 'config/database.php';

$admin = ['Administrador'];
                    
                    if (!array_key_exists('rol', $_SESSION) || !in_array($_SESSION['rol'], $admin)) {

                      ?> <script>
            alert ("Permisos insuficientes.");
                </script>
                <?php
                      echo "<h1>Te estamos redireccionando...</hi>";
                      header("refresh: 0.6 url=index.php");
   die;
}
?>



<style>.pep {
  color: blue;
  margin: 0;
  position: absolute;
  top: 50%;
  left: 25%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
.pepe {
  color: blue;
  margin: 0;
  position: absolute;
  top: 50%;
  left: 75%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
.pepep {
  color: blue;
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
</style>
<div>
<a href="registroproducto.php">  
       <button class="pep btn class-btn">Registrar un nuevo producto</button>  
     </a>

     <br> <br><br> <br><br> <br><br> <br><br> <br>
     </div>
     <div>
<a href="admin_registro.php">  
       <button class="pepep btn class-btn">Registrar un nuevo usuario vendedor/comprador</button>  
     </a>

     <br> <br><br> <br><br> <br><br> <br><br> <br>
     </div>

     <div>
<a href="index.php">  
       <button class="pepe btn class-btn">Volver al modo Cliente</button>  
     </a>

     <br> <br><br> <br><br> <br><br> <br><br> <br>
     </div>
     <div>
<?php
include "layout/footer.php";
 ?>
 </div>