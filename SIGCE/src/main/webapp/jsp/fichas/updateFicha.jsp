<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <title>Actualizar Ficha | SIGCE</title>
</head>
<body>
<header>
    <nav>
        <h2>Actualizar ficha:</h2>
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
        <h3>Actualizar Ficha</h3>
        <form action="../../Controllers/Fichas/update.php" method="POST">
            <div class="colum1">

                <label for="apellido">Ficha:</label><br>
                <div class="label">
                    <input type="enable" name="codigo" value="<?php echo $row['ide_Fic']  ?>">
                </div>

                <div>
                    <label for="apellido">Jornada:</label><br>
                    <div class="label">
                        <input type="text" class="form-control mb-3" name="jornada"  value="<?php echo $row['jor_Fic']  ?>">
                    </div>
                </div>


            </div>

            <div class="colum2">

                <div>
                    <label for="apellido">Fecha de Inicio:</label><br>
                    <div class="label">
                        <input type="date" class="form-control mb-3" name="comienzo" value="<?php echo $row['fecCom_Fic']  ?>">
                    </div>
                </div>
                <br>
                <div>
                    <label for="apellido">Fecha de Finalizacion </label><br>
                    <div class="label">
                        <input type="date" class="form-control mb-3" name="fin" value="<?php echo $row['fecFin_Fic']  ?>">
                    </div>

                </div>
                <!-- LO VOY A DEJAR INACTIVO YA QUE SI VAN A INGRESAR UNA FICHA DEBE ESTAR ACTIVA :V  -->
                <!-- <div>
                    <label for="apellido">Ingrese el estado de la ficha</label><br>
                    <input placeholder="Ingrese el estado de la ficha" name="Articulo" type="text" required>
                </div> -->
                <div>
                    <label for="apellido">Estado</label><br>
                    <div class="label">
                        <input type="text" class="form-control mb-3" name="Estado" value="<?php echo $row['est_Fic']  ?>">

                    </div>
                </div>

                <button type="submit">Actalizar</button>
            </div>


        </form>
    </div>
</aside>
<script src="https://kit.fontawesome.com/0774745bde.js" crossorigin="anonymous"></script>
</body>
</html>
