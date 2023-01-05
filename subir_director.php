<?php include "conexion.php"; ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>App Peliculass</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/css/bootstrap.min.css">
</head>
<body>
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos a Pelicomic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="mostrar_directores.php" class="btn btn-info ml-2">Regresar</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-12">
                Ingresa los datos del director
            </h4>
            <form action="" method="post" class="col-md-6 mt-3 pb-5">
                <div class="form-group">
                    <label for="dire_nombres">Nombre del director</label>
                    <input type="text" class="form-control" id="dire_nombres" name="dire_nombres">
                </div>
                <div class="form-group">
                    <label for="dire_apellidos">Apellidos del director</label>
                    <input type="text" class="form-control" id="dire_apellidos" name="dire_apellidos">
                </div>
                <div class="form-group">
                    <label for="nac">Nacionalidad</label>
                    <input type="text" class="form-control" id="nac" name="nac">
                </div>
                <div class="form-group">
                    <label for="fec_nac">Fecha de nacimiento</label>
                    <input type="date" class="form-control" id="fec_nac" name="fec_nac">
                </div>
                <div class="form-group">
                    <label for="img">Imagen URL</label>
                    <input type="text" class="form-control" id="img" name="img">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" name="guardar" value="Guardar">
                </div>
            </form>

        </div>
    </section>
</body>
</html>
<?php
    if(isset($_POST['guardar'])){
       $dire_nombres = $_POST['dire_nombres'];
       $dire_apellidos = $_POST['dire_apellidos'];
       $nac = $_POST['nac'];
       $fec_nac = $_POST['fec_nac'];
       $img = $_POST['img'];

       $query_guardar = "INSERT INTO directores (dire_nombres, dire_apellidos, nac, fec_nac, img) VALUES ('{$dire_nombres}', '{$dire_apellidos}', '{$nac}', '{$fec_nac}', '{$img}')";
       mysqli_query($conexion, $query_guardar);
       header('Location: subir_director.php');
    }
?>