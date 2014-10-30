<script src="jquery.min.js"></script>

<?php

require('Grupo.php');
require_once('bd.php');
require('ajax1.php');
require('header.php');

$grupo = new Grupo();

if(isset($_REQUEST['grupo'])){
    $id = $_REQUEST['grupo'];
}else{
    $id = 0;
}
if(isset($_REQUEST['grupo'])){
    $accion = $_REQUEST['grupo'];
}else{
    $accion = 0;
}
if(isset($_REQUEST['grupo'])){
    $idg  = $_REQUEST['grupo'];
}else{
    $idg = 0;
}

switch($accion){
    case 0:
        $grupo->seleccionaGrupo($idg);
        break;
    case 1:
        $grupo->createGrupo($id,$idg);
        $grupo->seleccionaGrupo($idg);
        break;
    case 2:
        $grupo->deleteGrupo($id,$idg);
        $grupo->seleccionaGrupo($idg);
        break;
    case 3;
        $grupo->asignarGrupo($idg);
}


?>

<?php require('footer.php'); ?>