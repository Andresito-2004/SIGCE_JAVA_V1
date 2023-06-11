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
    <link rel="stylesheet" href="../../assets/css/instructor/style.css">
    <link rel=icon href='../../assets/img/logo.png' sizes="32x32" type="image/png">
    <title>Buscar Ficha .:. SIGCE</title>
</head>
<body>
<header>
    <nav>
        <h2>Fichas Registradas:</h2>
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
        <h3>Fichas Registradas:</h3>
        <table >

            <td class="titulo">FICHA</td>
            <td class="titulo">JORNADA</td>
            <td class="titulo">FECHA DE COMIENZO</td>
            <td class="titulo">FECHA DE FINALIZACION</td>
            <td class="titulo">ESTADO</td>
            <td class="titulo">PROGRAMA</td>


            <?php
            while($row=mysqli_fetch_array($rs)){?>

            <tr>
                <td class="cont"><?php  echo $row['ide_Fic']?></td>
                <td class="cont"><?php  echo $row['jor_Fic']?></td>
                <td class="cont"><?php  echo $row['fecCom_Fic']?></td>
                <td class="cont"><?php  echo $row['fecFin_Fic']?></td>
                <td class="cont"><?php  echo $row['est_Fic']?></td>
                <td class="cont"><?php  echo $row['nom_Pro']?></td>
                <th><a href="updateFicha.php?id=<?php echo $row['ide_Fic'] ?>" class="btn btn-warning">Editar</a></th>
                <th><a href="../../Controllers/Fichas/inactivar.php ?id=<?php echo $row['ide_Fic'] ?>" class="btn btn-warning">Inactivar</a></th>
            </tr>
            <?php }?>
        </table>
    </div>
</aside>
<script src="https://kit.fontawesome.com/0774745bde.js" crossorigin="anonymous"></script>
</body>
</html>