<?php

    class Grupo {

        private $id;
        private $nombre;
        private $avatar;
        private $orden;
        private $estatus;

        public function createGrupo(){
            echo "<br>Create Grupo";
        }
        public function readGrupoG(){
            echo "<br>Read Grupo G";
        }
        public function readGrupoS(){
            echo "<br>Read Grupo S";
        }
        public function deleteGrupo(){
            echo "<br>Delete Grupo";
        }
        public function updateGrupo(){
            echo "<br>Update Grupo";
        }
        public function asignarGrupo(){
            echo "<br>Asignar Alumno a Grupo";
        }
        public function asignarGrupo($idg){
            echo "<div class=table-responsive>";
            echo "<table class=\"table table-striped\">";
            echo "<form action=TestGrupo.php method=POST id=grupo>";
            echo "<tr><td colspan=2 align=center><strong>Asignar Nuevos Grupos</strong></td></tr>";
            echo "<tr><td>Materia: </td><td><select id=id_materia name=materia>";
            $sql01 = "SELECT * FROM grupo WHERE estatus = 3 ORDER BY grupo ASC";
            $result01 = mysql_query($sql01)or die("Error $sql01");
            while($field = mysql_fetch_array($result01)){
                $id_materia = $field['id_materia'];
                $opcion = utf8_decode($field['nombre']);

                $sql03="SELECT * FROM maestro_materia WHERE id_maestro = $id_maestro AND id_materia = $id_materia";
                $result03 = mysql_query($sql03)or die("No se ejecuta consulta $sql03");
                $existe = mysql_num_rows($result03);
                if($existe > 0){
                    echo "<option value=0>No Disponible</option>";
                }else{
                    echo "<option value=$id_materia>$opcion</option>";
                }
            }
            echo "</select></td></tr>";
            echo "<input type=hidden id=accion name=accion value=1>";
            echo "<input type=hidden id=maestro name=maestro value=$id_maestro>";
            echo "<tr><td colspan=2 align=center><input type=submit value=Agregar></td></tr>"; // onclick=window.location.href='TestMateria.php?accion=1&maestro=$id_maestro'

            echo "</form>";
            echo "</table>";
            echo "</div>";

        }
        public function asignarGrupo(){
            echo "<br>Asignar Grupo";
        }
        public function createMaestroMateria($maestro_id, $materia_id){
            if ($materia_id > 0){
                $insert01 = " INSERT INTO maestro_materia (id_maestro, id_materia)
                                 VALUES('$maestro_id','$materia_id')";
                $execute01 = mysql_query($insert01) or die("Error  $insert01");
            }
        }

        public function deleteMaestroMateria($maestro_id, $materia_id){
            if ($materia_id > 0){
                $delete01 = "DELETE FROM maestro_materia WHERE id_maestro = $maestro_id AND id_materia = $materia_id";
                $delete01 = mysql_query($delete01) or die("Error  $delete01");
            }
        }

        public function seleccionaGrupo($grupo){
            echo "<div class=table-responsive>";
            echo "<form action=ajax1.php method=Post name=maestro id=maestro target='_self'>";
            echo "<table class=\"table table-striped\">";

            echo "<tr><td>Maestro: </td><td><select name=idmae>";
            $sql02 = "SELECT * FROM usuario WHERE estatus = 1 AND nivel = 2 ORDER BY ApellidoPaterno ASC";
            $result02 = mysql_query($sql02)or die("Error $sql02");
            if ($maestro != 0){
                $sql04 = "SELECT * FROM usuario WHERE id = $maestro";
                $result04 = mysql_query($sql04)or die("No se ejecuta consulta $sql04");
                $nombre = $maestro." ) ";
                $nombre .= mysql_result($result04,0,'ApellidoPaterno');
                $nombre .= " ".mysql_result($result04,0,'ApellidoMaterno');
                $nombre .= " ".mysql_result($result04,0,'nombre');
                $nombre = utf8_decode($nombre);
                echo "<option value=$maestro>$nombre</option>";
            }
            while($field = mysql_fetch_array($result02)){
                $id_maestro = utf8_decode($field['id']);
                $opcion = utf8_decode($field['id'].") ".$field['ApellidoPaterno']." ".$field['ApellidoMaterno']." ".$field['Nombre']);
                if ($maestro != $id_maestro)
                    echo "<option value=$id_maestro>$opcion</option>";
            }
            echo "</select></td></tr>";

            echo "<tr><td colspan=2 align=center><input type=submit id=submit value=Seleccionar></td></tr>";
            echo "</table>";


            echo "</form>";
            echo "</div>";
        }

    }