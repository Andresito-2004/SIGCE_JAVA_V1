<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/admin/style.css">
    <link rel=icon href='../../assets/img/logo.png' sizes="32x32" type="image/png">
    <title>Crear Ficha .:. SIGCE</title>
</head>
<body>
<header>
    <nav>
        <h2>Registrar ficha:</h2>
        <div class="buscador">
            <input type="text"><i class="fa-solid fa-magnifying-glass"></i>
        </div>
        <img src="../../assets/img/user.png" alt="user">
    </nav>
</header>
<section>
    <div class="dash">
        <img src="../../assets/img/logo.png" alt="logo_sena">
        <div class="navegacion">
            <div class="fa-solid fa-magnifying-glass"></div>
            <div class="fa-solid fa-envelope"></div>
            <div class="fa-solid fa-calendar-days"></div>
            <div class="fa-solid fa-list-check"></div>
            <div class="fa-solid fa-gear"></div>
        </div>
        <img src="../../assets/img/user.png" alt="user">
    </div>
</section>
<aside>
    <div class="contenido">
        <h3>Registra Nueva Ficha</h3>
        <form action="../../Controllers/Fichas/fichas.php" method="post">
            <div class="colum1">

                <div>
                    <label for="apellido">Programa:</label><br>
                    <select name="programa">
                        <option value="">SELECCIONE EL PROGRAMA</option>

                    </select>
                </div>

                <label for="apellido">Ficha:</label><br>
                <div class="label">
                    <input name="Numero" type="number" required>
                </div>

                <div>
                    <label for="apellido">Jornada:</label><br>
                    <div class="label">
                        <input name="jornada" type="text" required>
                    </div>
                </div>


            </div>

            <div class="colum2">

                <div>
                    <label for="apellido">Fecha de Inicio:</label><br>
                    <div class="label">
                        <input name="Inicio" type="date" required>
                    </div>
                </div>

                <div>
                    <label for="apellido">Fecha de Finalizacion </label><br>
                    <div class="label">
                        <input name="Fin" type="date" required>
                    </div>
                </div>
                <button type="submit">Registrar</button>
            </div>


        </form>
    </div>
</aside>
<script src="https://kit.fontawesome.com/0774745bde.js" crossorigin="anonymous"></script>
</body>
</html>