-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-04-2016 a las 02:43:35
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

CREATE DATABASE IF NOT EXISTS `thesis` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `thesis`;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `thesis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcar la base de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2015-10-06 20:23:55', 'Add device Detail id 8&nbspName&nbspMonitor'),
(2, 'admin', '2015-10-06 20:25:54', 'Edit device info Monitor'),
(3, 'admin', '2015-10-06 20:26:32', 'Assign Device id 1&nbspName&nbspMonitor to location id 25&nbspName&nbspLibrary'),
(4, 'admin', '2015-10-06 20:31:01', 'Update Status Monitor to Used '),
(5, 'admin', '2015-10-07 21:34:03', 'Edit system User platea21'),
(6, 'admin', '2016-04-23 22:29:52', 'Add Client User recharte'),
(7, 'admin', '2016-04-23 22:30:29', 'Add System User hugo'),
(8, 'admin', '2016-04-23 22:33:33', 'Edit system User hugo'),
(9, '', '2016-04-23 22:34:48', 'Add System User hugo'),
(10, '', '2016-04-23 22:41:47', 'Edit Device Type teclado'),
(11, '', '2016-04-23 22:42:14', 'Edit Device Type  CPU'),
(12, '', '2016-04-23 22:42:52', 'Add device Type Monitor'),
(13, '', '2016-04-23 22:44:00', 'Add device Detail id 2&nbspName&nbspteclado'),
(14, '', '2016-04-23 22:46:05', 'Edit location Sala de Docente'),
(15, '', '2016-04-23 22:46:13', 'Edit location Escuela'),
(16, '', '2016-04-23 22:46:22', 'Edit location Laboratorio A'),
(17, '', '2016-04-23 22:46:29', 'Edit location Laboratorio B'),
(18, '', '2016-04-23 22:46:35', 'Edit location Laboratorio C'),
(19, '', '2016-04-23 22:46:43', 'Edit location Laboratorio D'),
(20, '', '2016-04-23 22:46:56', 'Edit location C-101'),
(21, '', '2016-04-23 22:47:07', 'Edit location C-102'),
(22, '', '2016-04-23 22:47:14', 'Edit location C-104'),
(23, 'admin', '2016-04-23 23:03:46', 'transfer Device   to location id 22&nbspName&nbspSala de Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(128) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(1, 'hugo', 'salazar', 'admin', 'admin', 'uploads/epis.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(128) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `client`
--

INSERT INTO `client` (`client_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(13, 'usu1', '123', 'recharte', 'aragon', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style="font-size:16px"><strong>MISION</strong></span></pre>\r\n\r\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp;\r\n\r\nSomos una Universidad Privada sin fines de lucro, humanista, cientifica, tecnologica e internacionalizada, con principios eticos, orientada a la gestion de la calidad y del conocimiento. Formamos profesionales e investigadores emprendedores contribuyendo al desarrollo sostenible de la sociedad.\r\n\r\n.&nbsp;</span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style="font-size: large;"><strong>VISION</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;">&nbsp; \r\n\r\n\r\nLa Universidad Privada de Tacna forma profesionales que contribuyen al avance de la ciencia y la tecnologia para el desarrollo sustentable y satisfaccion de las necesidades de la sociedad.\r\n\r\n<n></n>\r\n\r\nUniversidad con carreras y programas acreditados, con responsabilidad social, lider en la formacion integral de profesionales, investigadores y emprendedores.\r\n\r\n </span><br /><br /></p>'),
(3, 'History', '<pre><span style="font-size: large;">HISTORY &nbsp;</span> </pre>\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n\r\n\r\n\r\n\r\n\r\nLa Universidad Privada de Tacna es una institución de carácter privado sin fines de lucro, esta se crea por iniciativa del Presbítero Luis Mellado Manzano, con la Ley Nº 24060 dada por el Congreso de la República  el 3 de enero de 1985 y publicada en el Diario Oficial “El Peruano” el día 09 de enero de 1985. Se inicia con las Facultades de Educación, con la Carrera Profesional de Matemáticas; Ingeniería Electrónica y Derecho y Ciencias Políticas.\r\n<br/>\r\nPosteriormente, mediante Ley Nº 25164 el 26 de diciembre de 1989 el Congreso de la República modifica el Art. 2 de la Ley 24060 y establece que la Universidad de Tacna ofrece las siguientes Facultades: Facultad de Educación con las especialidades de Educación Inicial, Educación Primaria, Educación Secundaria, Educación y Rehabilitación Física y de idupt; Facultad de Ingeniería con las especialidades Ingeniería Electrónica, Ingeniería de Sistemas e Ingeniería Civil; Facultad de Derecho y Ciencias Políticas con las especialidades de Derecho y Ciencias Políticas, y la Facultad de Turismo y Hotelería con las especialidades de Turismo y Hotelería.\r\n<br/>\r\nLa misma Ley en su Art. 3 establece que “por esta única vez quedan ampliadas por tres años más las funciones de la Comisión Organizadora de la Universidad Privada de Tacna, debiendo concluir sus labores el 31 de diciembre de 1992”. En esta primera etapa ejercieron la Presidencia de la Comisión Organizadora de la Universidad en calidad de Rectores el Presbítero Luis Mellado Manzano y el Ing. Arnold Berríos Chalco. Por Res. Nº 191-92-ANR del 30 de diciembre de 1992 se prorroga el periodo de organización de la Universidad por un plazo máximo de seis meses, de conformidad con el Art. 2 de la Ley 25378. Asimismo por Res. Nº 269-93-ANR del 10 de febrero de 1993 se designó la Comisión Organizadora encargada de completar el proceso de organización. Y mediante Resolución Nº 452-93-ANR del 28 de junio de 1993 se declaró en proceso de evaluación final a la Universidad Privada de Tacna a partir del 1 de julio de mismo año.\r\n<br/>\r\nPor Ley del Congreso Constituyente Democrático Nº 26214 el 20 de julio de 1993 se autoriza a la ANR designar una Comisión que concluya el proceso de organización de la Universidad. La ANR mediante Res. Nº 492-93-ANR ratifica a la Comisión anterior en tanto que la Asociación Civil Promotora designe a sus representantes como lo señala la Ley aludida. Con Res. Nº 498-93-ANR, la Asamblea Nacional de Rectores otorga la autorización de funcionamiento definitivo a la Universidad Privada de Tacna la misma que a partir del 23 de julio de 1993 deberá sujetarse a la Ley Universitaria vigente. Realizada la Asamblea Estatutaria y promulgado el Estatuto de la Universidad se constituyeron los órganos de gobierno de la misma para luego proceder a la elección de las primeras autoridades.\r\n<br/>\r\nEs así que el 02 de diciembre de 1993 el presidente de la Comisión Organizadora de la UPT, cita para el 05 de Diciembre de 1993 en el Teatro Municipal de Tacna, a Asamblea Universitaria Extraordinaria, con la finalidad de elegir Rector y Vicerrectores,  recayendo las funciones de Rector en el Mag. Segundo Vargas Tarrillo, Vicerrector Académico Dr. Luis Cavagnaro Orellana y Vicerrector Administrativo Mag. Víctor Collantes Díaz.\r\n<br/>\r\nEl 05 de Diciembre de 1998 en Sesión Extraordinaria de Asamblea Universitaria, el Mag. Segundo Vargas Tarrillo es elegido nuevamente como Rector de la Universidad para un segundo periodo y en esta misma Asamblea es elegido Vicerrector Administrativo el Mag. Percy Che-Piú Salazar y como Vicerrector Académico el Profesor Luis Cohaíla Tamayo.\r\n<br/>\r\nEn Sesión de Asamblea Universitaria Extraordinaria del 11 de enero del 2002, se declaró la vacancia del cargo del Rector, Vicerrector Académico y Administrativo. Y conforme a lo que dispone el Artículo 66 del Estatuto de la Universidad Privada de Tacna, en caso de vacancia del cargo de Rector, corresponde asumir interinamente el mismo, en orden excluyente, al Vicerrector Académico, Vicerrector Administrativo o al Decano más antiguo o al docente principal de mayor antigüedad de la Asamblea Universitaria. Es así que estando vacantes los Vicerrectorados y al haber declinado el Decano más antiguo, Dr. Alberto Zeballos Ale, le corresponde asumir el cargo de Rector Interino al Mag. Omar Eyzaguirre Reynoso por ser el siguiente de mayor antigüedad.\r\n<br/>\r\nDel mismo modo, se designa como Vicerrectora Interina a la Mag. María Angélica Gutarra de Berríos y se le encarga la coordinación de asuntos administrativos al Lic. Pedro Riveros Valderrama. Y el 11 de enero empieza el gobierno interino por un período de 150 días, para luego ampliarlo hasta el 10 de junio.<br/>\r\n\r\nLa Asamblea Universitaria en Sesión Extraordinaria del 07 de junio del 2002 elige al Rector y Vicerrectores de conformidad con la Ley Universitaria No. 23733 y el Estatuto de la Universidad Privada de Tacna ; como resultado del proceso eleccionario, el Mag. Omar Eyzaguirre Reynoso fue elegido Rector de la Universidad, habiendo sido proclamado y juramentado en dicho acto, por el período de 05 años. En esta misma asamblea se procede a encargar el Vicerrectorado Académico a la Mag. María Angélica Gutarra de Berríos y el Vicerrectorado Administrativo al Abog. Augusto Franco Delgado.<br/>\r\n\r\nCon fecha 22 de julio de 2005, el Rector de la Universidad Privada de Tacna, Mag. Omar Eyzaguirre Reynoso, convoca a Sesión Extraordinaria de Asamblea Universitaria para el 03 de agosto del 2005, con la finalidad de elegir a los Vicerrectores para completar el período 2002-2007, de conformidad con el art. 35 de la Ley N 23733 “Ley Universitaria”, modificada por la Ley No.  26302; y el Art. 63 del Estatuto de la UPT, que establece que el Rector y Vicerrectores son elegidos por un período de 05 años.\r\n<br/>\r\nAl no existir postulantes para el Vicerrectorado Administrativo, por acuerdo adoptado en la citada Sesión Extraordinaria, se decidió declarar vacante dicho cargo; asimismo, se propuso y sometió a votación, siendo elegido por mayoría absoluta el Abog. Augusto Franco Delgado, por lo que, con Resolución No. 009-2005-UPT-AU del 03 de agosto del 2005, se resolvió: Encargar al Profesor Principal Abog. Augusto Franco Delgado, el Vicerrectorado Administrativo de la Universidad Privada de Tacna para completar el período 2002-2007, desde el 06 de agosto del 2005 hasta el 10 de junio del 2007.<br/>\r\n\r\nLa gestión del Vicerrector Administrativo Abog. Augusto Franco Delgado fue hasta el 15 de octubre del 2006, puesto al que por motivos de salud, presentó su renuncia irrevocable, motivo por el cual se convocó a Sesión Extraordinaria de Asamblea Universitaria el 13 de octubre del 2006; al no presentarse candidatos para la elección del Vicerrectorado Administrativo, el señor Presidente propone encargar el Vicerrectorado Administrativo al Mag. Alberto Wenceslao Zeballos Ale, el único candidato para la mencionada encargatura; por tanto, la Asamblea Universitaria, con Resolución No. 012-2006-UPT-Au, resuelve encargar el Vicerrectorado Administrativo al aludido Profesor Principal a partir del 16 de octubre de 2006 hasta el 10 de junio del 2007.\r\n<br/>\r\nCon fecha 08 de junio del año 2007, el Rector de la Universidad, Mag. Omar Eyzaguirre Reynoso convoca a Sesión Extraordinaria de conformidad con la Ley Universitaria y Estatuto de la Universidad; en dicho proceso eleccionario fueron propuestos como candidatos para ocupar el cargo de Rector los Profesores Principales Dr. Marcelino Raúl Valdivia Dueñas y el Dr. Luis Vicente Cavagnaro Orellana, quienes luego de la primera, segunda y tercera votación, no alcanzaron el mínimo legal de votos necesarios; por lo que el Comité Electoral declaró, desierta la elección al cargo de Rector. Es así que la Asamblea Universitaria por votación acuerda encargar el rectorado por 150 días calendarios a la Profesora Principal Mag. Elva Inés Acevedo Velásquez, a partir del 11 de junio. En esta misma Asamblea se elige en primera votación en el cargo de Vicerrector Académico al Mag. Hugo Cirilo Calizaya Calizaya, por el periodo de 05 años a partir del 11 de junio al 10 de junio del 2012.\r\n<br/>\r\nPor último, en esta misma Asamblea Universitaria se procede a elegir al Vicerrector Administrativo, siendo propuesto como candidato el Dr. Marcelino Raúl Valdivia Dueñas, quien luego de la primera, segunda y tercera votación, no alcanzó el mínimo legal de votos necesarios por lo que se declara desierta la elección al cargo mencionado, y la Asamblea Universitaria acuerda encargar el Vicerrectorado Administrativo por 150 días calendarios, al Profesor Principal Mag. Arcadio Atencio Vargas, quién alcanzó la votación correspondiente.\r\nEn Sesión Extraordinaria de Asamblea Universitaria del 07 de noviembre del 2007, de conformidad con la Ley Universitaria y el Estatuto de la Universidad Privada de Tacna, se elige al Rector y Vicerrector Administrativo, siendo el resultado de dicho proceso eleccionario que la Profesora Principal. Dra. Elva Acevedo Velásquez, fuera elegida en primera votación para el cargo de Rectora de la Universidad siendo proclamada y juramentada en dicho acto por el periodo de 05 años, a partir del 08 de noviembre del 2007.\r\n<br/>\r\nEn esta misma Asamblea, no habiendo propuesta de candidatos para la elección del Vicerrector Administrativo, la Asamblea Universitaria acordó encargar por un periodo de 03 años al Mag. Arcadio Atencio Vargas.<br/>\r\n\r\nLa gestión de la Dra. Elva Acevedo Velásquez buscó la consolidación de políticas universitarias y de gestión económica permitiendo la culminación de importantes proyectos, la puesta en marcha de nuevas iniciativas en diversos ámbitos que van desde la docencia hasta los estudiantes y el personal de administración y servicios, incidiendo en la investigación científica buscando la mejora de la calidad de la enseñanza. Durante los cinco años de gestión se logró la dotación de infraestructuras y equipamientos.<br/>\r\n\r\nLa Dra. Elva Acevedo Velásquez en su calidad de Presidenta de la Asamblea Universitaria convocó a sesión extraordinaria de Asamblea Universitaria para elegir al nuevo Rector, resultando elegido el Dr. Hugo Calizaya Calizaya, el comité electoral lo proclamó como Rector de la Universidad Privada de Tacna por un lapso de cinco años a partir del 08 de noviembre del 2012.<br/>\r\n\r\nDurante una ceremonia realizada el 07 de noviembre en el auditorio de la Facultad de Derecho ante autoridades invitadas y el pleno de la comunidad universitaria se efectuó la ceremonia de transmisión de mando.<br/>\r\n\r\nEn sesión extraordinaria de Asamblea Universitaria convocada el 20 de noviembre del 2012 se procedió a la elección por encargatura de los vicerectorados Académico y Administrativo recayendo la designación en el Dr. Javier Eduardo Eugenio Ríos Lavagna como Vicerrector Académico y el Dr. Pedro Lorenzo Herbert Riveros Valderrama como Vicerrector Administrativo a partir del 21 de noviembre del 2012 y por un período de tres años.\r\n\r\n\r\n<br/>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Indeed, at Southland College the foundation of God stand''s sure!\r\n</p>'),
(4, 'Footer', '<p style="text-align:center">Inventario de Recursos Tecnologicos (UPT) Copyright 2016</p>\r\n\r\n<p style="text-align:center">All Rights Reserved &reg;2016</p>\r\n'),
(5, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Technology Resource Inventory System</span></p>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `device_name`
--

CREATE TABLE IF NOT EXISTS `device_name` (
  `dev_id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(2, 'teclado'),
(4, 'mouse'),
(5, ' CPU'),
(10, 'Monitor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_details`
--

CREATE TABLE IF NOT EXISTS `location_details` (
  `ld_id` int(11) NOT NULL AUTO_INCREMENT,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`ld_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(1, 22, '2016-04-23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `notification`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `notification_read`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stdevice`
--

CREATE TABLE IF NOT EXISTS `stdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_id` int(11) NOT NULL,
  `dev_desc` varchar(128) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_desc`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`) VALUES
(1, 8, '<p>Monitor LG, no se puede poner imagen como una PIC</p>\r\n', 'LG-0001', 'LG', 'LG-Monitor', 'Used'),
(2, 2, '<p>we</p>\r\n', 'we', 'qwe', 'we', 'New');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stlocation`
--

CREATE TABLE IF NOT EXISTS `stlocation` (
  `stdev_id` int(11) NOT NULL AUTO_INCREMENT,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  PRIMARY KEY (`stdev_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcar la base de datos para la tabla `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'Sala de Docente', 'images/thumbnails.jpg'),
(23, 'Escuela', 'images/thumbnails.jpg'),
(24, 'Laboratorio A', 'images/thumbnails.jpg'),
(25, 'Laboratorio B', 'images/thumbnails.jpg'),
(26, 'Laboratorio C', 'images/thumbnails.jpg'),
(27, 'Laboratorio D', 'images/thumbnails.jpg'),
(28, 'C-101', 'images/thumbnails.jpg'),
(29, 'C-102', 'images/thumbnails.jpg'),
(30, 'C-104', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Volcar la base de datos para la tabla `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(201, 'admin', '2016-04-23 22:23:27', '2016-04-23', 5, 0),
(202, 'admin', '2016-04-23 22:47:57', '2016-04-24', 1, 0),
(203, 'admin', '2016-04-23 23:55:20', '2016-04-24', 1, 0),
(204, 'admin', '2016-04-24 00:33:02', '2016-04-24', 1, 0),
(205, 'admin', '2016-04-24 01:23:25', '2016-04-24', 1, 0),
(206, 'admin', '2016-04-24 01:33:32', '', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
