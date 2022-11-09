<?php require('./config/config_card.php') ?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css?1.0" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/animate.css?1.0" type="text/css" media="screen" />
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
        <section class="cont_card wow bounceInUp">
            <div class="cont_catalogo">
                <div class="contenedor_card">
                    <?php
                    foreach ($resultado as $row) {
                        $cat = $row['idSubCategoria'];
                        $Cat = $row['idCategoria'];
                        if ($Cat == 1 && $cat == 2) {
                    ?>
                            <?php require('./layout/card.php') ?>
                        <?php } ?>
                    <?php } ?>
                </div>
            </div>
        </section>
        <?php require('./layout/footer.php') ?>
    </main>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>