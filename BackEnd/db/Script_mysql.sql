-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_manualesrd
CREATE DATABASE IF NOT EXISTS `db_manualesrd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_manualesrd`;

-- Dumping structure for table db_manualesrd.autor_trans
CREATE TABLE IF NOT EXISTS `autor_trans` (
  `Autor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Autor_Nombre` varchar(50) NOT NULL,
  `Autor_Apellido` varchar(50) NOT NULL,
  `Pais_ID` int(11) NOT NULL,
  `Registro_Estado` bit(1) NOT NULL DEFAULT b'1',
  `Registro_Usuario` varchar(50) NOT NULL DEFAULT 'current_user()',
  `Registro_Fecha` varchar(45) NOT NULL DEFAULT 'now()',
  PRIMARY KEY (`Autor_id`),
  KEY `Pais_id_fk` (`Pais_ID`),
  CONSTRAINT `Pais_id_fk` FOREIGN KEY (`Pais_ID`) REFERENCES `paises_cata` (`Pais_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_manualesrd.autor_trans: ~4 rows (approximately)
/*!40000 ALTER TABLE `autor_trans` DISABLE KEYS */;
INSERT INTO `autor_trans` (`Autor_id`, `Autor_Nombre`, `Autor_Apellido`, `Pais_ID`, `Registro_Estado`, `Registro_Usuario`, `Registro_Fecha`) VALUES
	(1, 'Chancleta', 'Gomez', 1, b'1', 'current_user()', 'now()'),
	(2, 'Pedro', 'santanilla ', 2, b'1', 'current_user()', 'now()'),
	(3, 'Chancleta', 'Gomez', 1, b'1', 'current_user()', 'now()'),
	(4, 'Pedro', 'santanilla ', 2, b'1', 'current_user()', 'now()');
/*!40000 ALTER TABLE `autor_trans` ENABLE KEYS */;

-- Dumping structure for table db_manualesrd.manuales_trans
CREATE TABLE IF NOT EXISTS `manuales_trans` (
  `manuales_id` int(11) NOT NULL AUTO_INCREMENT,
  `Manual_Estado` bit(1) NOT NULL DEFAULT b'1',
  `Manual_Titulo` varchar(200) NOT NULL,
  `Manual_Descripcion` varchar(300) NOT NULL,
  `Autor_ID` int(11) NOT NULL,
  `Manual_Fecha_publicacion` datetime DEFAULT NULL,
  `Manual_Numero_Pagina` int(11) NOT NULL,
  `Manual_ISBN` varchar(100) NOT NULL DEFAULT 'xx-xxx-xxxx-x',
  `Manual_Ruta_URL` varchar(100) NOT NULL,
  `Registro_Usuario` varchar(50) NOT NULL,
  `Registro_Fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`manuales_id`),
  KEY `Autor_id_fk` (`Autor_ID`),
  CONSTRAINT `Autor_id_fk` FOREIGN KEY (`Autor_ID`) REFERENCES `autor_trans` (`Autor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table db_manualesrd.manuales_trans: ~11 rows (approximately)
/*!40000 ALTER TABLE `manuales_trans` DISABLE KEYS */;
INSERT INTO `manuales_trans` (`manuales_id`, `Manual_Estado`, `Manual_Titulo`, `Manual_Descripcion`, `Autor_ID`, `Manual_Fecha_publicacion`, `Manual_Numero_Pagina`, `Manual_ISBN`, `Manual_Ruta_URL`, `Registro_Usuario`, `Registro_Fecha`) VALUES
	(2, b'1', 'Manual de C# a Fondo', 'Este manual es una prueba de consulta', 1, '0202-12-02 00:00:00', 50, '', '', '1', '2020-01-30 12:12:05'),
	(3, b'1', 'La Biblia de php', 'Este manual es una prueba de consulta', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '2', '2020-01-30 12:15:56'),
	(4, b'1', 'Manual Basico de Java', 'Prueba de Java ', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '2', '2020-01-30 12:16:27'),
	(5, b'1', 'Introduccion a la programacion de Java', 'Prueba de Java ', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:18:52'),
	(6, b'1', 'Introduccion a la programacion orientada a objeto ', 'Prueba de C# ', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:20:06'),
	(7, b'1', 'Introduccion a la programacion orientada a objeto con C# ', 'Este manual introduce al estudiante a los conocimiento necesario a la peogramacion', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:21:56'),
	(8, b'1', 'Libro basico de Javascript ', 'Prueba de Javascript', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:24:54'),
	(9, b'1', 'Python Avanzado ', 'Python', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:26:18'),
	(10, b'1', 'Python basico ', 'Python', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:29:52'),
	(11, b'1', 'Perl Avanzado ', 'Curso de Perl', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:29:52'),
	(12, b'1', 'Perl Basico ', 'Python', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:29:52'),
	(13, b'1', 'PHP Orientado a objeto ', 'Orientado a objeto con php', 1, '0202-12-02 00:00:00', 50, '\\Desaarrollo', '', '1', '2020-01-30 12:29:52');
/*!40000 ALTER TABLE `manuales_trans` ENABLE KEYS */;

-- Dumping structure for table db_manualesrd.paises_cata
CREATE TABLE IF NOT EXISTS `paises_cata` (
  `Pais_id` int(11) NOT NULL AUTO_INCREMENT,
  `Pais_Nombre` varchar(50) NOT NULL,
  `Registro_Estado` bit(1) NOT NULL DEFAULT b'1',
  `Registro_Usuario` varchar(50) NOT NULL DEFAULT 'current_user()',
  `Registro_Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`Pais_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table db_manualesrd.paises_cata: ~8 rows (approximately)
/*!40000 ALTER TABLE `paises_cata` DISABLE KEYS */;
INSERT INTO `paises_cata` (`Pais_id`, `Pais_Nombre`, `Registro_Estado`, `Registro_Usuario`, `Registro_Fecha`) VALUES
	(1, 'Canada', b'1', 'current_user()', '2021-09-01 11:13:27'),
	(2, 'Colombia', b'1', 'current_user()', '2021-09-01 11:13:27'),
	(3, 'Canada', b'1', 'current_user()', '2021-09-01 11:13:30'),
	(4, 'Colombia', b'1', 'current_user()', '2021-09-01 11:13:30'),
	(5, 'Republica Dominicana', b'1', 'current_user()', '2021-09-01 11:13:54'),
	(6, 'Mexico', b'1', 'current_user()', '2021-09-01 11:13:54'),
	(7, 'Republica Dominicana', b'1', 'current_user()', '2021-09-01 11:13:56'),
	(8, 'Mexico', b'1', 'current_user()', '2021-09-01 11:13:56');
/*!40000 ALTER TABLE `paises_cata` ENABLE KEYS */;

-- Dumping structure for procedure db_manualesrd.sp_ListaManuales
DELIMITER //
CREATE PROCEDURE `sp_ListaManuales`(
	IN `PAGEINDEX` int,
	IN `PAGESIZE` int,
	IN `Manual_Titulo` varchar(100)
)
BEGIN
declare Registros int;
 set Registros = ( Select Max(manuales_id) from manuales_trans);

SELECT 
    m.Manual_Titulo,
    m.Manual_Descripcion,
    m.Manual_Fecha_publicacion,
    m.Manual_Numero_Pagina,
    m.Manual_ISBN,
    M.Manual_Ruta_URL,
    CONCAT(a.Autor_Nombre, ' ', a.Autor_Apellido) AS Autor,
    p.Pais_Nombre,
    m.Manuales_id AS Linea,
    PageSize AS Ultima_Linea,
    Registros
FROM
    manuales_trans AS m
        INNER JOIN
    Autor_trans AS a ON m.Autor_ID = a.autor_id
        INNER JOIN
    Paises_Cata AS p ON a.Pais_ID = p.Pais_id
WHERE 
    m.manual_Titulo LIKE CONCAT('%',
            REPLACE(Manual_Titulo, '', '%'),
            '%') Or m.manual_Titulo = ''
        AND m.Manual_Estado = 1
        AND a.Registro_Estado = 1
ORDER BY Linea
LIMIT PAGEINDEX , PAGESIZE;

END//
DELIMITER ;

-- Dumping structure for procedure db_manualesrd.sp_Manuales_Consulta
DELIMITER //
CREATE PROCEDURE `sp_Manuales_Consulta`(
in NombreManual varchar(100)  
)
BEGIN

Select 
manuales_id,
Manual_Titulo,
Manual_Descripcion,
Manual_Autor,
Manual_Fecha_publicacion,
Manual_Numero_Pagina,
Manual_Ruta_URL
From manuales
Where Manual_Titulo  like concat('%', Replace(NombreManual, '','%'), '%') or Manual_Descripcion like concat('%', Replace(NombreManual, '','%'), '%')
or NombreManual = ''
And Manual_Estado = 1;
 
END//
DELIMITER ;

-- Dumping structure for procedure db_manualesrd.sp_Manuales_Inactiva
DELIMITER //
CREATE PROCEDURE `sp_Manuales_Inactiva`( in manual_id int )
BEGIN

Update Manuales 
					Set Manual_Estado= 0
                    Where manuales_id = manual_id ;
				
END//
DELIMITER ;

-- Dumping structure for procedure db_manualesrd.sp_Manuales_Insertar
DELIMITER //
CREATE PROCEDURE `sp_Manuales_Insertar`(
Manual_Titulo varchar(50),
Manual_Descripcion varchar(300), 
Manual_Autor varchar(50) ,
Manual_Fecha_publicacion datetime,
Manual_Numero_Pagina int,
Manual_ISBN varchar(200) ,
Manual_Ruta_URL varchar(100) , 
Registro_Usuario int
)
BEGIN
INSERT INTO Manuales
(
Manual_Titulo ,
Manual_Descripcion , 
Manual_Autor ,
Manual_Fecha_publicacion ,
Manual_Numero_Pagina ,
Manual_ISBN ,
Manual_Ruta_URL , 
Registro_Usuario,
Registro_Fecha
)
VALUES
(
Manual_Titulo,
Manual_Descripcion , 
Manual_Autor ,
Manual_Fecha_publicacion ,
Manual_Numero_Pagina ,
Manual_ISBN ,
Manual_Ruta_URL , 
Registro_UsuariO,
Now()
);
END//
DELIMITER ;

-- Dumping structure for procedure db_manualesrd.sp_Manual_Actualizar
DELIMITER //
CREATE PROCEDURE `sp_Manual_Actualizar`(
Manual_ID int,
Manual_Titulo varchar(50),
Manual_Descripcion varchar(300), 
Manual_Autor varchar(50) ,
Manual_Fecha_publicacion datetime,
Manual_Numero_Pagina int,
Manual_ISBN varchar(200) ,
Manual_Ruta_URL varchar(100) , 
Registro_Usuario int
)
BEGIN
Update Manuales 
					Set Manual_Titulo = coalesce(Manual_Titulo,Manual_Titulo) ,
						Manual_Descripcion = coalesce(Manual_Descripcion, Manual_Descripcion) , 
						Manual_Autor = coalesce(Manual_Descripcion, Manual_Descripcion) ,
						Manual_Fecha_publicacion = coalesce(Manual_Fecha_publicacion, Manual_Fecha_publicacion)	 ,
						Manual_Numero_Pagina = coalesce(Manual_Numero_Pagina, Manual_Numero_Pagina) ,
						Manual_ISBN = coalesce( Manual_ISBN, Manual_ISBN) ,
						Manual_Ruta_URL = coalesce(Manual_Ruta_URL, Manual_Ruta_URL ) , 
						Registro_Usuario = coalesce(Registro_Usuario, Registro_Usuario) ,
						Registro_Fecha = now()     
					Where manuales_id = Manual_ID; 
END//
DELIMITER ;

-- Dumping structure for procedure db_manualesrd.sp_Usuario_Insertar
DELIMITER //
CREATE PROCEDURE `sp_Usuario_Insertar`(
Usuario_User varchar(50),
Usuario_Clave varchar(50) ,
Usuario_Nombre varchar(50), 
Usuario_Correo varchar(50), 
Registro_Usuario varchar(50)
)
BEGIN
INSERT INTO Usuarios
(
Usuario_User ,
Usuario_Clave ,
Usuario_Nombre, 
Usuario_Correo , 
Registro_Usuario,
Registro_Fecha
)
Values 
(
Usuario_User ,
Usuario_Clave ,
Usuario_Nombre, 
Usuario_Correo , 
Registro_Usuario,
Now()
);
END//
DELIMITER ;

-- Dumping structure for table db_manualesrd.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Estado` bit(1) NOT NULL DEFAULT b'1',
  `Usuario_User` varchar(50) NOT NULL,
  `Usuario_Clave` varchar(50) NOT NULL,
  `Usuario_Nombre` varchar(50) NOT NULL,
  `Usuario_Correo` varchar(50) NOT NULL,
  `Registro_Usuario` varchar(50) NOT NULL,
  `Registro_Fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`Usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table db_manualesrd.usuarios: ~2 rows (approximately)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`Usuario_id`, `Usuario_Estado`, `Usuario_User`, `Usuario_Clave`, `Usuario_Nombre`, `Usuario_Correo`, `Registro_Usuario`, `Registro_Fecha`) VALUES
	(1, b'1', 'h.salas', '1234', 'Helmer', 'yonnich@gmail.com', 'Helmer salas', '2020-01-30 12:01:00'),
	(2, b'1', 'y.salas', '1234', 'Yonnich', 'hys-11@hotmail.com', 'Helmer salas', '2020-01-30 12:01:52');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
