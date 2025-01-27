<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TRADEHOUSE</title>

      <link href="images/favicon.ico" rel="icon">

    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/form.css" />

    <link rel="stylesheet" href="css/form.css" />
  </head>
  <body>
    <main>
      <div class="contenedor__todo">
        <div class="caja__trasera">
          <div class="caja__trasera-login">
            <h3>¿Ya tienes una cuenta?</h3>
            <p>Inicia sesión para entrar en la página</p>
            <button id="btn__iniciar-sesion">Iniciar Sesión</button>
          </div>
          <div class="caja__trasera-register">
            <h3>¿Aún no tienes una cuenta?</h3>
            <p>Regístrate para que puedas iniciar sesión</p>
            <button id="btn__registrarse">Regístrarse</button>
          </div>
        </div>

        <!--Formulario de Login y registro-->
        <div class="contenedor__login-register">
          <!--Login-->
          <form action="php/login.php" method="post" class="formulario__login">
            <img src="./assets/images/LOGO.png" loading="lazy" />
            <h2>Iniciar Sesión</h2>
            <h3>Correo electronico</h3>
            <input type="text" placeholder="example@gmail.com" name="correo_electronico" required />
            <h3>Contraseña</h3>
            <input type="password" placeholder="******" name="contrasena" required />
            <button>Entrar</button>
          </form>

          <!--Register-->
          <form action="php/registro.php" method="POST" class="formulario__register" id="captchaForm" >
            <img src="./assets/images/LOGO.png" loading="lazy" />
            <h2>Regístrarse</h2>

            <h3>Nombre Completo</h3>
            <input
            
              type="text"
              placeholder="Jose Miguel Almonte Guzman"
              name="nombre_completo"
              required
            />
            <h3>Correo electronico</h3>
            <input type="text" placeholder="JoseAlmote@gmail.com" name="correo_electronico" required />
            <h3>Nombre de usuario</h3>
            <input type="text" placeholder="JMiguel" name="usuario" required />
            <h3>Contraseña</h3>
            <input type="password" placeholder="******" name="contrasena" required />
            
            <!--aqui comienza el codifo del capchat-->
            <h3 for="captchaInput">Ingrese el texto que ve en la imagen:</h3><br>
            <input type="text" id="captchaInput" name="captchaInput"><br>
            <canvas id="captchaCanvas" width="100" height="30"></canvas><br>
            <button>Regístrarse</button>
          </form>
         <!--esto es el codigo de js de capchat lo que es para comprobar que no es un bot--> <script src="js/capchat.js"></script>
        </div>
      </div>
    </main>

    <script src="js/script.js"></script>
  </body>
</html>
