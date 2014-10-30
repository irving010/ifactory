<?php
session_start();
session_destroy();
setcookie('id_usu','0');
setcookie('nivel','0');
header('Location: /');
?>
	