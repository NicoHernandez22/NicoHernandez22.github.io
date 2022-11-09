<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" media="screen" />
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seguridad Corporal</title>
    <link rel="icon" href="Multimedia/img/Logo_SC2.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body id="body">
    <?php require('./layout/header.php') ?>
    <?php require('./layout/loading.php') ?>
    <main class="main_registro">
        <br>
        <section class="registro">
            <div class="titulo">
                <h1>Formulario de registro:</h1>
            </div>
            <br>
            <div class="formulario_registro">
                <form action="config/register.php" method="POST">
                    <label for="">Nombre:</label>
                    <input type="text" name="user" id="" placeholder="Nombre" required><br>
                    <br>
                    <label for="">Apellido:</label>
                    <input type="text" name="apellido" id="" placeholder="Apellido" required><br>
                    <br>
                    <label for="">Teléfono:</label>
                    <input type="tel" name="tel" id="" placeholder="Ej: 091234567" maxlength="9" required><br>
                    <br>
                    <label for="">E-mail:</label>
                    <input type="email" name="mail" id="" placeholder="Ej: amapola6996@tumail.com" required><br>
                    <br>
                    <label for="">Fecha de nacimiento:</label>
                    <input type="date" name="fnac" id="" required><br>
                    <br>
                    <label for="cars">Elige el rol:</label>
                    <select name="rol">
                    <option value="Cliente">Cliente</option>
                    </select>
                    <br>
                    <br>
                    <label for="">Contraseña:</label>
                    <input type="password" name="pass" id="" placeholder="Contraseña" required><br>
                    <br>
                    <div class="botones_registros">
                        <button type="submit" class="boton">Enviar</button>
                        <button type="button" class="boton">Borrar todo</button>
                    </div>
                </form>
            </div>
        </section>
        <br>
    </main>
    <br>
    <?php require('./layout/footer.php') ?>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>