<script src="jquery.min.js"></script>

<?php
require('bd.php');
require ('Grupo.php');
require ('TestGrupo.php');
require ('header.php');
$grupo = new Grupo();
$idg = $_POST['idg'];
$sql04 = "SELECT * FROM grupo WHERE id = $idg";
$result04 = mysql_query($sql04)or die("No se ejecuta consulta $sql04");
$existe = mysql_num_rows($result04);
if ($existe > 0) {
    $nombre = $idg . " ) ";
    $nombre .= " " . mysql_result($result04, 0, 'grupo');
    $nombre = utf8_decode($nombre);
    echo "<br>Maestro Seleccionado: <strong>".$nombre."</strong>";
}

echo "<div class=table-responsive>";
echo "<table class=\"table table-striped\">";
echo "<tr><td colspan=2 align=center><strong>Grupos</strong></td></tr>";
$sql01 = "SELECT * FROM maestro_materia WHERE id_maestro = $id_maestro GROUP BY id_materia";
$result01 = mysql_query($sql01)or die("Error $sql01");
while($field = mysql_fetch_array($result01)){
    $id = $field['id_materia'];
    $sql04 = "SELECT * FROM materia WHERE id_materia = $id";
    $result04 = mysql_query($sql04)or die("No se ejecuta consulta $sql04");
    $nombre = utf8_decode(mysql_result($result04,0,'nombre'));
    echo "<tr><td>$nombre</td><td><a href=TestMateria.php?accion=2&maestro=$id_maestro&materia=$id>Eliminar</a></td></tr>";
}
echo "</table>";
echo "</div>";


$materia->asignarMateriaMaestro($id_maestro);

require ('footer.php');
?>
