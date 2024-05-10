<?php 
    include 'conectar.php';

    $correo_electronico = $_POST['correo_electronico'];
    $contrasena = $_POST['contrasena'];


//Con esta variable vamos a validar el correo y la contrasena del usuario para poder acceder a la aplicacion web    
    $valdiar_login = mysqli_query($mysqli,"SELECT * FROM registrar WHERE correo_electronico = '$correo_electronico'
    and contrasena= '$contrasena'"); 

    if(mysqli_num_rows($valdiar_login) > 0 ){
        header("location: ../index.php");
        exit();
    } 
    
    else{
        echo '
            <script>
            alert("este correo no esta registrado, por favor intente de nuevo");
            window.location = "../login.php";
            </script>
        
        ';
        exit();
    } 
?>