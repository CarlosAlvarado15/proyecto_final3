<?php
// Incluye el archivo de conexión
include('conecction.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {
        $id = $_POST['updateId']; // Se obtiene el ID del maestro a actualizar

        $correo = $_POST['updateCorreo'];
        $nombre = $_POST['updateNombre'];
        $apellidos = $_POST['updateApellidos'];
        $direccion = $_POST['updateDireccion'];
        $fecha_nacimiento = $_POST['updateFechaNacimiento'];

        // print_r($_POST);

        // Consulta SQL de actualización utilizando una consulta preparada
        $query = "UPDATE maestros SET correo=?, nombre=?, apellidos=?, direccion=?, fecha_nacimiento=? WHERE id=?";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("sssssi", $correo, $nombre, $apellidos, $direccion, $fecha_nacimiento, $id);

        // Ejecutar la consulta
        if ($stmt->execute()) {
            echo "Actualizado con Éxito";
        } else {
            echo "Error al actualizar el maestro: " . $mysqli->error;
        }

        $stmt->close();
        exit();
    } catch (mysqli_sql_exception $e) {
        echo $e->getMessage();
    }
}
