<?php
require 'config/config.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$id = isset($_GET['id']) ? $_GET['id'] : '';
$token = isset($_GET['token']) ? $_GET['token'] : '';

if ($id == '' || $token == '') {
    echo 'Error al procesar la petición';
    exit;
} else {
    $token_tmp = hash_hmac('whirlpool', $id, KEY_TOKEN);

    if ($token == $token_tmp) {
        $sql = $con->prepare("SELECT count(idProducto) FROM producto WHERE idProducto=? AND stock >= 1");
        $sql->execute([$id]);
        if ($sql->fetchColumn() > 0) {
            $sql = $con->prepare("SELECT idProducto, nombreProducto, descrProducto, precio, descuento, stock FROM producto WHERE idProducto=? AND stock >= 1 LIMIT 1");
            $sql->execute([$id]);
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $idProducto = $row['idProducto'];
            $nombre = $row['nombreProducto'];
            $descr = $row['descrProducto'];
            $precio = $row['precio'];
            $descuento = $row['descuento'];
            $stock = $row['stock'];
            $precio_descuento = $precio - (($precio * $descuento) / 100);
            $dir_images = 'Multimedia/img_Productos/' . $id . '/';

            $rutaImg = $dir_images . 'principal.jpg';

            if (!file_exists($rutaImg)) {
                $rutaImg = 'Multimedia/img/no-photo.jpg';
            }

            $imagenes = array();
            $dir = dir($dir_images);

            while (($archivo = $dir->read()) != false) {
                if ($archivo != 'principal.jpg' && (strpos($archivo, 'jpg')) || strpos($archivo, 'jpeg')) {
                    $imagenes[] = $dir_images . $archivo;
                }
            }
            $dir->close();
        }
    } else {
        echo 'Error al procesar la petición';
        exit;
    }
}

$sql = $con->prepare("SELECT idProducto, nombreProducto, precio, idSubCategoria FROM producto WHERE stock >= 1 LIMIT 4");
$sql->execute();
$resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css??v=<?php echo (rand(1, 500)); ?>" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/animate.css??v=<?php echo (rand(1, 500)); ?>" type="text/css" media="screen" />
    <script src="/js/script.js?v=<?php echo (rand(1, 500)); ?>"></script>
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seguridad Corporal</title>
    <link rel="icon" href="Multimedia/img/Logo_SC2.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body id="body">
    <?php require('./layout/loading.php') ?>
    <?php require('./layout/header.php') ?>
    <main>
        <br>
        <section class="cont_muestra">
            <div class="contenedor_muestra">
                <article class="imagen_prod">
                    <img src="<?php echo $rutaImg; ?>" alt="" width="400px" height="400px">
                </article>
                <article class="descr_prod">
                    <h2><?php echo $nombre; ?></h2>
                    <?php
                    if ($descuento > 0) {
                        ?>
                        <p><del><?php echo MONEDA . ' ' . number_format($precio, 2, '.', ','); ?></del></p>
                        <h2><?php echo MONEDA . ' ' . number_format($precio_descuento, 2, '.', ','); ?> <br><small class="descuento"><?php echo $descuento ?>% descuento</small></h2>
                    <?php } else { ?>
                        <h2><?php echo MONEDA . ' ' . number_format($precio_descuento, 2, '.', ','); ?></h2>
                    <?php } ?>
                    <form action="comprarahora.php" method="POST"> 
                    <input type="hidden" name="aaa" value="<?php echo $idProducto ?>">
                    <input type="hidden" name="eee" value="<?php echo $stock ?>">
                    <div class="boton_muestra">
                    
                    <button type="submit">Comprar ahora <img src="Multimedia/img/credit-card.png" alt="" width="16px"> </button>
                    </div>
                  
                    </form>
                    <div class="boton_muestra">
                        <button>Agregar al carrito <img src="Multimedia/img/carrito-de-compras.png" alt="" width="16px"></button>
                    </div>
                </article>
            </div>
            <section class="descripcion">
                <h2>Característcas:</h2>
                <p>
                    <?php echo $descr;?>
                </p>
            </section>
            <hr>
        </section>
        <section class="cont_card wow bounceInUp">
            <div class="contenedor_card">
                <?php
                foreach ($resultado as $row) {
                    $cat = $row['idSubCategoria'];
                    if ($cat == 1) {
                ?>
                        <div class="articulo">
                            <div class="articulo_imagen">
                                <?php
                                $id = $row['idProducto'];
                                $imagen = "Multimedia/img_Productos/$id/principal.jpg";
                                if (!file_exists($imagen)) {
                                    $imagen = "Multimedia/img/no-photo.jpg";
                                }
                                ?>
                                <img src="<?php echo $imagen ?>" alt="" width="300px">
                            </div>
                            <div class="articulo_descr">
                                <p>
                                    <?php
                                    echo $row['nombreProducto'];
                                    ?>
                                </p>
                                <p class="precio">
                                    <?php
                                    echo '$ ' . $row['precio'];
                                    ?>
                                </p>
                            </div>
                            <div class="articulo_boton">
                                <button type="button" class="boton add-Cart">Comprar <img src="Multimedia/img/carrito-de-compras.png" alt="" width="16px"></button>
                                <a href="muestra_producto.php?id=<?php echo $row['idProducto']; ?>&token=<?php echo hash_hmac('whirlpool', $row['idProducto'], KEY_TOKEN); ?>"><button type="button" class="boton">Ver <img src="Multimedia/img/ojo.png" alt="" width="16px"></button></a>
                            </div>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
        </section>
        <?php require('./layout/footer.php') ?>
    </main>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>