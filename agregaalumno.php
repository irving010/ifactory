<?php
require ('alumno.php');
require ('bd.php');
require('header.php');
$Grupo = new Grupo();
$Grupo->AsignarAlumnoaGrupo();
?>