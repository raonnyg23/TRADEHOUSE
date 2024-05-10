<?php 
 
    include 'conectar.php';

    $nombre_completo = $_POST['nombre_completo'];
    $correo_electronico = $_POST['correo_electronico'];
    $usuario = $_POST['usuario'];
    $contarsena = $_POST['contrasena'];

    $sqlinsert = "INSERT INTO registrar values(0,'$nombre_completo','$correo_electronico','$usuario','$contarsena');";

//verificar que el correo no se repita     

    $verificar_corre = mysqli_query ($mysqli,"SELECT * FROM registrar where correo_electronico = '$correo_electronico' ");
    
    if(mysqli_num_rows($verificar_corre) > 0){
        echo '
            <script>
                alert("este correo ya esta registrado, intenta con otro diferente");
                window.location = "../login.php";
            </script>
        ';
            exit();


    }
//verficar que el nombre de usuario no se repita en la base de datos
$verificar_corre = mysqli_query ($mysqli,"SELECT * FROM registrar where usuario = '$usuario' ");
    
    if(mysqli_num_rows($verificar_corre) > 0){
        echo '
            <script>
                alert("este usuario ya esta en uso, intenta con otro diferente");
                window.location = "../login.php";
            </script>
        ';
            exit();


    }



    mysqli_query ($mysqli, $sqlinsert);

    if($mysqli  ){
        echo
            '
            <script>
                alert("usuario almacenado con exito");
                window.location = "../login.php";
                </script>
            ';

    }
//revisar la etiqueta de window porque no funciona
?>
