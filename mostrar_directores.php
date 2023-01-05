<?php 
    include "conexion.php"; 
    ob_start();
?>
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
            <a href="subir_director.php" class="btn btn-success">Cargar directores</a>
            <a href="./" class="btn btn-info ml-2">Regresar</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-12">
                Lista de directores
            </h4>
            <?php
                $query = "SELECT dire_id, CONCAT(dire_nombres, ' ', dire_apellidos) AS director, img, nac, fec_nac FROM directores";
                $query_resultado = mysqli_query($conexion, $query);
                //print_r($query_resultado);
                while($fila = mysqli_fetch_array($query_resultado)){
                    ?>
                        <div class="col-md-3 mb-4">
                        <img src="<?php echo $fila['img']; ?>" alt="" style="width: 100%; display: block;">
                            <h4 class="text-info">
                                <?php echo $fila['director']; ?>
                            </h4>
                            <div>
                                <strong>Nacionalidad: </strong> <?php echo $fila['nac']; ?>
                            </div>
                            <div>
                                <strong>Fecha nacimiento: </strong> <?php echo $fila['fec_nac']; ?>
                            </div>
                            <div class="mt-2">
                                <a href="editar_directores.php?id=<?php echo $fila['dire_id'] ?>" class="btn btn-small btn-warning">editar</a>
                                <a href="mostrar_directores.php?delete=<?php echo $fila['dire_id']; ?>" class="btn btn-small btn-danger">borrar</a>
                            </div>
                        </div>
                     
                <?php }
                    if(isset($_GET['delete'])){
                        //echo $_GET['delete'];
                        $id_delete = $_GET['delete'];
                        $query = "DELETE FROM directores WHERE dire_id = {$id_delete}";
                        mysqli_query($conexion, $query);
                        header("Location: mostrar_directores.php");
                    }
            ?>
        </div>
    </section>
</body>
</html>