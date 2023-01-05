<?php
    $conexion = mysqli_connect('localhost', 'root', '', 'dw2022_1');

    if($conexion){
        echo 'conexion exitosa';
    }
    if(!$conexion){
        die('fallo en la conexion ' . mysqli_error($conexion));
    }
?>