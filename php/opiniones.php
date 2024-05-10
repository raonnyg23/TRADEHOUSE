<?php 

include_once 'conectar.php';

$usuario = $_POST['usuario'];
$correo_electronico = $_POST['correo_electronico'];
$mensaje = $_POST['mensaje'];

$sqlinsert = "INSERT INTO opiniones values(0,'$usuario','$correo_electronico','$mensaje');";

mysqli_query ($mysqli, $sqlinsert);
header("location: ../index.php");

?>