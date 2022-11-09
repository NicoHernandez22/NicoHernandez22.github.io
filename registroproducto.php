<?php require "layout/admin_header.php"; 
$admin = ['Administrador'];
if (!array_key_exists('rol', $_SESSION) || !in_array($_SESSION['rol'], $admin)) {
header('refresh=1 url=index.php');
die;
}
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/hide.css" type="text/css" media="screen" />
    <script src="js/wow.min.js"></script>
    <script src="js/productonuevo.js"></script>
    <script>
        new WOW().init();
    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seguridad Corporal</title>
    <link rel="icon" href="Multimedia/img/Logo_SC2.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body id="body">
   
    <br>
    <main class="main_registro">
        <section class="registro">
            <div class="titulo">
                <h1>Registro de nuevo producto</h1>
            </div>
            <div class="formulario_registro">
                <form action="config/nuevoproducto.php" method="POST" enctype="multipart/form-data">
                    <label for="">Nombre del producto:</label>
                    <input type="text" name="newprod" id="" placeholder="Producto" autocomplete="off" required><br>
                    <br>
                    <label for="">Imagen del producto:</label>
                    (La imagen deberá llamarse "principal.jpg")<br>
                    <input type="file" name="file" id="file"><br>
                    <br>
                    <label for="">Descripción del producto:</label>
                    <input type="text" name="desc" id="" placeholder="Descripción" autocomplete="off" required><br>
                    <br>
                    <label for="">Precio:</label>
                    <input type="number" name="precio" id="" placeholder="Precio" autocomplete="off" required><br>
                    <br>
                    <label for="">Descuento:</label>
                    <input type="number" name="descuento" id="" placeholder="Descuento" autocomplete="off" required><br>
                    <br>

                    <label for="">Categoría del producto:</label>
                    <select name="idcategoria" id="idcat" onchange="showDiv(this)">
                        <option value="1">Protección</option>
                        <option value="2">Ropa</option>
                        <option value="3">Calzado</option>
                        <option value="4">Trabajo en alturas</option>
                        <option value="5">Seguridad Vial</option>
                    </select>

                    <br><br>

                    Subcategoría del producto: 

                        <select label="" name="idsubcat" id="sub1">
                            <optgroup label="Protección">
                                    <option value="1">Protección de manos</option>
                                    <option value="2">Protección craneana</option>
                                    <option value="3">Protección auditiva</option>
                                    <option value="4">Protección ocular</option>
                                    <option value="5">Protección viral</option>
                            </optgroup>


                            <optgroup label="Ropa">
                            <option value="6">Chalecos</option>
                            <option value="7">Gabardinas</option>
                            <option value="8">Camisas</option>
                            <option value="9">Camperas y buzos</option>
                            <option value="10">Pantalones</option>
</optgroup>

<optgroup label="Calzado">
                            <option value="11">Botines</option>
                            <option value="12">Zuecos</option>
                            <option value="13">Botas</option>
                            <option value="14">Zapatos</option>
                            </optgroup>

                            <optgroup label="Trabajo en alturas">
                            <option value="15">Frenos</option>
                            <option value="16">Arnés</option>
                            <option value="17">Auto retráctil</option>
                            <option value="18">Cabo</option>
                            </optgroup>

                    
                            <optgroup label="Seguridad vial">
                            <option value="19">Matacanto</option>
                            <option value="20">Lomo de burro</option>
                            <option value="21">Vallas</option>
                            <option value="22">Cuña para ruedas</option>
                            <option value="23">Señales</option>
                            </optgroup>
                        </select>

                        
                    <br>    <br>  
                    Cantidad de stock:
                    <input type="number" name="stock" id="" placeholder="Ej: 10" autocomplete="off" required>

                        


                    <br>
                    <br>

                    <div class="botones_registros">
                        <button type="submit" class="boton">Enviar</button>
                        <button type="reset" class="boton">Borrar todo</button>
                    </div>
                </form>
            </div>
        </section>
    </main>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>