<?php



// Define las credenciales de conexión
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'proyecto_final';

// Try to connect to the database
try {
    $mysqli = new mysqli($host, $username, $password, $database);
    // echo "Conectado a proyecto";
} catch (mysqli_sql_exception $e) {
    die('Error de conexión: ' . $e->getMessage());
}

// Check if the connection was successful
if ($mysqli->connect_error) {
    die('Error de conexión: ' . $mysqli->connect_error);
}




// Close the connection to the database
//$mysqli->close();