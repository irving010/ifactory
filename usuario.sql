/*
SQLyog Ultimate v8.61 
MySQL - 5.5.16 : Database - proyecto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto`;

/*Table structure for table `alumno_grupo` */

DROP TABLE IF EXISTS `alumno_grupo`;

CREATE TABLE `alumno_grupo` (
  `idag` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(20) NOT NULL,
  `id_grup` int(20) NOT NULL,
  PRIMARY KEY (`idag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `alumno_grupo` */

insert  into `alumno_grupo`(`idag`,`id`,`id_grup`) values (1,1,1),(2,2,2),(3,5,1),(4,5,3),(5,8,3);

/*Table structure for table `asigna-grupo` */

DROP TABLE IF EXISTS `asigna-grupo`;

CREATE TABLE `asigna-grupo` (
  `idg` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`idg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `asigna-grupo` */

insert  into `asigna-grupo`(`idg`,`id`) values (1,1),(2,2);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `idc` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `activo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

insert  into `clientes`(`idc`,`nombre`,`activo`) values (1,'pablo','si'),(2,'sofia','si');

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `id_grup` int(20) unsigned NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id_grup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`id_grup`,`Nombre`,`Estatus`) values (1,'Tic73','1'),(2,'Tic74','3'),(3,'Tic26','1'),(4,'Tic98','1');

/*Table structure for table `maestro_materia` */

DROP TABLE IF EXISTS `maestro_materia`;

CREATE TABLE `maestro_materia` (
  `id_maestro` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maestro_materia` */

insert  into `maestro_materia`(`id_maestro`,`id_materia`) values (1,2),(3,1);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`id_materia`,`nombre`,`estatus`) values (1,'Matematicas',1),(2,'Diseño Web',1),(3,'Base de Datos',1);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `idp` int(11) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `exist` int(11) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `activo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`idp`,`nombre`,`exist`,`costo`,`activo`) values (1,'carros',1,12,'si'),(2,'pelotas',0,23,'si'),(3,'rines',30,54,'si');

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `ids` int(11) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `activo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sucursal` */

insert  into `sucursal`(`ids`,`nombre`,`activo`) values (1,'toluca','si'),(2,'lerma','si');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ApellidoPaterno` varchar(100) NOT NULL,
  `ApellidoMaterno` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Calle` varchar(100) NOT NULL,
  `NumeroExterior` varchar(100) NOT NULL,
  `NumeroInterior` varchar(100) NOT NULL,
  `Colonia` varchar(100) NOT NULL,
  `Municipio` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `CP` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Nivel` varchar(100) NOT NULL,
  `Estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`Nombre`,`ApellidoPaterno`,`ApellidoMaterno`,`Telefono`,`Calle`,`NumeroExterior`,`NumeroInterior`,`Colonia`,`Municipio`,`Estado`,`CP`,`Correo`,`Usuario`,`Contraseña`,`Nivel`,`Estatus`) values (1,'Valeria','Velasquez','Dotor','','','','','','','','','','','','2',3),(2,'Jose','Perez','Leon','','','','','','','','','','','','2',3),(3,'pedro','paramo','cobijas','','','','','','','','','','','','2',1),(4,'jose','perez','leon','','','','','','','','','','','','3',1),(5,'g','g','g','','','','','','','','','','','','2',3),(6,'Felipe','Ferra','Gomez','','','','','','','','','','','','3',1),(7,'jose','perez','leon','','','','','','','','','','','','1',1),(8,'Felipe','Ferra','Gomez','','','','','','','','','','','','2',3),(9,'jose','perez','leon','','','','','','','','','','','','1',1),(10,'jose','','','','','','','','','','','','','','1',1),(11,'jose','perez','leon','','','','','','','','','','','','2',1),(12,'juan','perez','nieto','','','','','','','','','','','','2',1),(13,'esther','anzaldo','escutia','','','','','','','','','','','','2',1);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID_USU` int(20) NOT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `ACTIVO` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_USU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`ID_USU`,`USUARIO`,`PASSWORD`,`ACTIVO`) values (1,'jose','1234','si'),(2,'uno','123','si');

/*Table structure for table `ventadetalle` */

DROP TABLE IF EXISTS `ventadetalle`;

CREATE TABLE `ventadetalle` (
  `idvd` int(11) NOT NULL AUTO_INCREMENT,
  `idv` int(11) DEFAULT NULL,
  `idp` int(11) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  KEY `idvd` (`idvd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `ventadetalle` */

insert  into `ventadetalle`(`idvd`,`idv`,`idp`,`costo`,`cant`) values (1,1,1,3,2),(2,1,1,3,2),(3,1,1,3,2),(4,1,1,3,2),(5,1,1,3,10),(6,1,2,1,23),(7,2,2,3,20),(8,4,1,2,2),(9,4,3,2,2),(10,4,3,2,2),(11,4,3,2,2),(12,4,3,3,2),(13,6,3,3,2),(14,7,3,3,3),(15,10,3,1,2),(16,12,3,6,4),(17,12,1,6,2),(18,13,3,1,2),(19,15,3,3,3);

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `idv` int(11) DEFAULT NULL,
  `idc` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `ids` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ventas` */

insert  into `ventas`(`idv`,`idc`,`fecha`,`ids`) values (1,1,'2013-10-15',1),(2,1,'0000-00-00',1),(3,1,'2013-11-04',1),(3,1,'2013-11-04',1),(4,2,'0000-00-00',2),(4,2,'0000-00-00',2),(4,2,'0000-00-00',2),(5,2,'2013-11-03',2),(6,1,'2013-11-04',2),(6,1,'2013-11-04',2),(7,2,'0000-00-00',2),(7,2,'0000-00-00',2),(8,1,'0000-00-00',1),(8,1,'0000-00-00',1),(8,1,'0000-00-00',1),(9,1,'2013-12-08',1),(9,1,'2013-12-08',1),(10,2,'2013-12-04',2),(11,2,'2014-01-15',1),(12,1,'2014-01-06',2),(13,1,'2014-02-04',1),(14,2,'2014-03-02',2),(15,2,'2014-04-07',2),(16,1,'0000-00-00',1),(17,1,'2014-04-07',1),(18,2,'2014-10-07',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
