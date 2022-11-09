<?php
require 'config/config.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$sql = $con->prepare("SELECT idProducto, nombreProducto, precio, idSubCategoria FROM producto WHERE stock >= 1 LIMIT 8");
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

<body>
    <?php require('./layout/loading.php') ?>
    <?php require('./layout/header.php') ?>
    <main>
        <section class="cont_carrusel">
            <article class="carrusel">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Multimedia/img/promocion_suspension.jpg" class="d-block w-100" alt="..." id="img_carousel" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="Multimedia/img/banner_protector_craneal.png" class="d-block w-100" alt="..." id="img_carousel" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="Multimedia/img/promocion_productos.jpg" class="d-block w-100" alt="..." id="img_carousel" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </article>
        </section>
        <br>
        <section class="cont_promocion">
            <article class="promocion">
                <p><img src="Multimedia/img/right-arrow.png" alt="" width="45px"> Mejor seguridad para manos</p>
            </article>
        </section>
        <section class="cont_card wow bounceInUp">
            <div class="contenedor_card">
                <?php
                foreach ($resultado as $row) {
                    $cat = $row['idSubCategoria'];
                    if ($cat == 1) {
                ?>
                        <?php require('./layout/card.php') ?>

                    <?php } ?>
                <?php } ?>
            </div>
        </section>
        <br>
        <section class="cont_promocion">
            <article class="banner wow bounceInUp">
                <div class="card">
                    <img src="Multimedia/img/banner_guantes.png" class="card-img" alt="..." height="300px">
                </div>
            </article>
        </section>
        <br>
        <section class="cont_promocion">
            <article class="promocion">
                <p><img src="Multimedia/img/right-arrow.png" alt="" width="45px"> Protección craneana</p>
            </article>
        </section>
        <section class="cont_card wow bounceInUp">
            <div class="contenedor_card">
                <?php
                foreach ($resultado as $row) {
                    $cat = $row['idSubCategoria'];
                    if ($cat == 2) {
                ?>
                        <?php require('./layout/card.php') ?>
                    <?php } ?>
                <?php } ?>
            </div>
        </section>
        <br>
        <section class="cont_promocion">
            <article class="promocion">
                <p><img src="Multimedia/img/right-arrow.png" alt="" width="45px"> Otros productos de interés</p>
            </article>
        </section>
        <section class="catalogo_recomendacion">
            <div>
                <article class="cont_prom_cuadrado">
                    <div>
                        <a href="catalogo_proteccion_manos.php"><img src="Multimedia/img_Productos/1/principal.jpg" alt="" width="300px" height="300px"></a>
                        <div class="texto-encima">
                            <p>Protección de manos</p>
                        </div>
                    </div>
                </article>
                <article class="cont_prom_cuadrado">
                    <div>
                        <a href="catalogo_trabajoAltura_retractil.php"><img src="Multimedia/img_Productos/28/principal.jpg" alt="" width="300px" height="300px"></a>
                        <div class="texto-encima">
                            <p>Trabajo en alturas</p>
                        </div>
                    </div>
                </article>
                <article class="cont_prom_cuadrado">
                    <div>
                        <a href="catalogo_calzado_bota.php"><img src="Multimedia/img_Productos/26/principal.jpg" alt="" width="300px" height="300px"></a>
                        <div class="texto-encima">
                            <p>Calzados</p>
                        </div>
                    </div>
                </article>
            </div>
        </section>
        <?php require('./layout/footer.php') ?>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>