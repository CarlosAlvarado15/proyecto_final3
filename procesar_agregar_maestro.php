<?php
// Incluye el archivo de conexión
include('conecction.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {

        $correo = $_POST['correo'];
        $nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $direccion = $_POST['direccion'];
        $fecha_nacimiento = $_POST['fecha_nacimiento'];

        // print_r($_POST);

        // Insertar los datos en la tabla usuarios_datos
        $query = "INSERT INTO maestros (`correo`,`nombre`, `apellidos`,`direccion`, `fecha_nacimiento`, `rol_id`) VALUES ('$correo','$nombre', '$apellidos','$direccion',$fecha_nacimiento, 2)";
        $resultado = $mysqli->query($query);
        echo "Agregado con Exito";


        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}
