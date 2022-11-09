<?php
include "./config/validar.php";
$cliente = ['Cliente'];                
                    if (!array_key_exists('rol', $_SESSION) ||!in_array($_SESSION['rol'], $cliente) ) {

                        ?> <script>
              alert ("Permisos insuficientes, debes ser cliente!");
                  </script>
                  <?php
                        echo "<h1>Te estamos redireccionando...</hi>";
                        header("refresh: 0.6 url=index.php");
     die;
  }


$idProd = $_POST['aaa'];
$stock = $_POST['eee'];

$nuevoStock = $stock - 1;
$comando = "UPDATE producto SET stock = '$nuevoStock' WHERE idProducto = '$idProd'";
$resultado = $conexion->query($comando);

if($resultado){
echo "<h1>Gracias por tu compra!</h1>";
echo "<br> <br>";
echo "<h2>Te estamos redireccionando...</h2>";
header("refresh:3 url=index.php");
}

?>