<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Caracteres especiales -->
    <meta charset="utf-8">
    <!-- author -->
    <meta name="author" content="SIGCE">
    <!-- Description -->
    <meta name="description" content="Sistema de gestion de llamado a comite">
    <!-- Keywords -->
    <meta name="Keywords" content="Sistema de gestion de llamado a comite" >
    <!-- miimum responsive viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Title -->
    <title>Login .:. SIGCE</title>
    <!-- favicon -->
    <link rel="shortcut icon" href="assets/img/logo_sigce.png" type="image/x-icon">
    <!-- Estilo -->
    <link rel="stylesheet" href="assets/css/login/style.css" />
</head>
<body>
<main>
    <div class="box">
        <div class="inner-box">
            <div class="forms-wrap">
                <form action="index.html" autocomplete="off" class="sign-in-form">
                    <div class="logo">
                        <img src="assets/img/logo-sena-negro-png-sin-fondo (1).png" alt="easyclass" />
                        <div class="logo-eslogan">
                            <h4>SIGCE</h4>
                            <p>Sigce hace tu vida mas facil.</p>
                        </div>
                    </div>
                    <div class="heading">
                        <h2>Bievenido de vuelta</h2>
                    </div>

                    <div class="actual-form">
                        <div class="input-container">
                            <input class="input" name="text" type="text">
                            <label class="label" for="input">Digita tu Usuario</label>
                            <div class="topline"></div>
                            <div class="underline"></div>
                        </div>
                        <br>
                        <div class="input-container">
                            <input class="input" name="text" type="text">
                            <label class="label" for="input">Digita tu Contraseña</label>
                            <div class="topline"></div>
                            <div class="underline"></div>
                        </div>
                        <br>
                        <input type="submit" value="Entrar" class="sign-btn"/></a>
                        <button><a href="#" class="toggle">Crear Cuenta</a></button>


                        <p class="text">
                            ¿Olvidaste los datos de tu cuenta? Conecta con el
                            <a href="./Views/Ficha/createFicha2.php">Servidor</a>
                        </p>
                    </div>
                </form>

                <form action="index.html" autocomplete="off" class="sign-up-form">
                    <div class="logo">
                        <img src="assets/img/logo-sena-negro-png-sin-fondo (1).png" alt="easyclass" />
                        <div class="logo-eslogan">
                            <h4>SIGCE</h4>
                            <p>Sigce hace tu vida mas facil.</p>
                        </div>
                    </div>
                    <div class="heading">
                        <h3>¡Empecemos ahora!</h3>
                    </div>

                    <div class="actual-form">
                        <div class="input-container">
                            <input class="input" name="text" type="text">
                            <label class="label" for="input">Digita tu Nombre</label>
                            <div class="topline"></div>
                            <div class="underline"></div>
                        </div>
                        <br>
                        <div class="input-container">
                            <input class="input" name="text" type="text">
                            <label class="label" for="input">Digita tu Usuario</label>
                            <div class="topline"></div>
                            <div class="underline"></div>
                        </div>
                        <br>
                        <div class="input-container">
                            <input class="input" name="text" type="text">
                            <label class="label" for="input">Digita tu Contraseña</label>
                            <div class="topline"></div>
                            <div class="underline"></div>
                        </div><br>
                        <input type="submit" value="Crear" class="sign-btn"/>
                        <button><a href="#" class="toggle">Ya tengo una cuenta</a></button>
                        <p class="text">
                            Al registrarme, acepto los <a href="#">Términos de servicio y la Política de privacidad.</a>
                        </p>
                    </div>
                </form>
            </div>

            <div class="carousel">
                <div class="images-wrapper">
                    <img src="assets/img/image1.png" class="image img-1 show" alt="" />
                    <img src="assets/img/image2.png" class="image img-2" alt="" />
                    <img src="assets/img/image3.png" class="image img-3" alt="" />
                </div>

                <div class="text-slider">
                    <div class="text-wrap">
                        <div class="text-group">
                            <h3>Lo que haces en 6 horas, lo harás en 5 minutos.</h3>
                            <h2>Facil y Rapido</h2>
                            <h2>Documentacion Legible</h2>
                        </div>
                    </div>

                    <div class="bullets">
                        <span class="active" data-value="1"></span>
                        <span data-value="2"></span>
                        <span data-value="3"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Javascript file -->
<script src="assets/js/login/app.js"></script>
</body>
</html>
