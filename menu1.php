<?php
$id=$_COOKIE['id_usu'];
$nivel=$_COOKIE['nivel'];

if($nivel<>"1" AND $nivel<>"2" AND $nivel<>"3"){

echo'
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">Control Escolar</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Inicio</a></li>
            </ul>
        </div>
    </div>
</div>
';
}

if($nivel=="1"){

session_start();
if(empty($_SESSION["user"])){ 
header("Location: ../index.php");
exit();
}

echo'
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">Control Escolar</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Inicio</a></li>
                <li><a href="TestUsuario.php">Usuarios</a></li>
                <li><a href="TestMateria.php">Asignar Materias</a></li>
				<li><a href="asignar-alumnos.php">Asignar Alumnos</a></li>
				<li><a href="fin_sesion.php">Salir</a></li>
            </ul>
        </div>
    </div>
</div>
';
}

if($nivel=="2"){

session_start();
if(empty($_SESSION["user"])){ 
header("Location: ../index.php");
exit();
}

echo'
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">Control Escolar</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Inicio</a></li>
                <li><a href="TestMaestro.php">Consultar Materias</a></li>
				<li><a href="fin_sesion.php">Salir</a></li>
            </ul>
        </div>
    </div>
</div>
';
}
?>