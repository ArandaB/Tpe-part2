-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 04:28:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_juegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorie` int(11) NOT NULL,
  `categorie` varchar(150) NOT NULL,
  `features` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorie`, `categorie`, `features`) VALUES
(1, 'Aventura', 'Juegos que suelen ser mundo abierto o necesitan de exploracion para avanzar, mayormente tambien tienen accion pero no es su rasgo principal'),
(2, 'Deporte', 'fútbol, tenis, baloncesto y conducción. Recrean diversos deportes. Requieren habilidad, rapidez y precisión. Como el nba 2k14'),
(3, 'Accion', 'De lucha y peleas. Basados en ejercicios de repetición (por ejemplo, pulsar un botón para que el personaje ejecute una acción). Se basan en enfrentamientos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `release_date` varchar(20) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `url_img` varchar(500) DEFAULT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `name`, `release_date`, `categories`, `description`, `url_img`, `id_categorie`) VALUES
(1, 'The legend of Zelda: Ocarina of time', '23/11 /1999', 'Aventura', 'Fecha de lanzamiento: 23 de noviembre de 1998. Cuando era niño, Link es engañado por Ganondorf, el Rey de los Gerudo Thieves. El malvado humano usa a Link para obtener acceso al Reino Sagrado, donde coloca sus manos contaminadas sobre le Trifuerza y transforma el hermoso paisaje de Hyrulean en un páramo yermo. Link está decidido a solucionar los problemas que ayudó a crear, por lo que, con la ayuda de Rauru, viaja a través del tiempo reuniendo los poderes de los Siete Sabios.', 'https://media.vandal.net/t200/2129/the-legend-of-zelda-ocarina-of-time-201982611564412_1.jpg', 1),
(2, ' Patinador profesional de Tony Hawk 2', '20/09/2000', 'Deporte', 'A medida que los esfuerzos de desarrollo de la mayoría de los principales editores se trasladan a cualquier cantidad de plataformas de próxima generación, es probable que Tony Hawk 2 sea uno de los últimos juegos realmente fantásticos que se lanzará en PlayStation.', 'https://media.vandal.net/t200/530/tony-hawks-pro-skater-3-2016101212744_1.jpg', 2),
(3, ' Grand Theft Auto IV', '29/04/2008', 'Accion', '¿Qué significa el Sueño Americano hoy? Para Niko Belic, recién llegado de Europa. Es la esperanza de que pueda escapar de su pasado. Para su primo, Roman, es la visión de que juntos puedan encontrar fortuna en Liberty City, puerta de entrada a la tierra de las oportunidades. Mientras se endeudan y son arrastrados a un inframundo criminal por una serie de sinvergüenzas, ladrones y sociópatas, descubren que la realidad es muy diferente del sueño en una ciudad que adora el dinero y el estatus, y es', 'https://media.vandal.net/t200/5738/20071128204128_1.jpg', 3),
(4, ' Soul Calibur', '08/09/1999', 'Accion', 'Esta es una historia de almas y espadas, que trasciende el mundo y toda su historia, contada por toda la eternidad... El mejor luchador basado en armas regresa, esta vez en Sega Dreamcast. ¡Soul Calibur desata increíbles gráficos, luchadores fantásticos y combos tan asombrosos que te dejarán sin aliento!', 'https://media.vandal.net/t200/310/soul-calibur-201610612536_1.jpg', 3),
(5, 'Súper mario galaxia', '12/11/2007', 'Aventura', 'El último héroe de Nintendo está dando el último paso... al espacio. Únase a Mario mientras marca el comienzo de una nueva era de videojuegos, desafiando la gravedad en todos los planetas de la galaxia. Cuando una criatura escapa al espacio con la princesa Peach, Mario la persigue y explora extraños planetas por toda la galaxia.', 'https://media.vandal.net/t200/65466/super-mario-galaxy-wii-2018913114513_8.jpg', 1),
(6, ' Súper Mario Galaxy 2', '23/04/2010', 'Aventura', 'Super Mario Galaxy 2, la secuela del juego original de salto galáctico, incluye la exploración basada en la física que desafía la gravedad del primer juego, pero está repleto de galaxias y características completamente nuevas para desafiar a los jugadores.', 'https://media.vandal.net/t200/10865/2011416111437_1.jpg', 1),
(7, ' Red Dead Redemption 2', '26/10/2018', 'Accion', 'Desarrollado por los creadores de Grand Theft Auto V y Red Dead Redemption, Red Dead Redemption 2 es una historia épica de la vida en el implacable corazón de Estados Unidos, 1899. Ha comenzado el final de la era del Lejano Oeste.', 'https://media.vandal.net/t200/42944/red-dead-redemption-2-2019101812583956_1.jpg', 3),
(8, ' Grand Theft Auto V', '17/9/2013', 'Accion', 'Los Santos es una gran metrópolis bañada por el sol, llena de gurús de la autoayuda, aspirantes a estrellas y celebridades que alguna vez fueron importantes y antes conocidas. La ciudad alguna vez fue la envidia del mundo occidental, pero ahora lucha por mantenerse a flote en una era de incertidumbre económica y telerrealidad. En medio del caos, tres criminales únicos trazan sus propias posibilidades de supervivencia y éxito.', 'https://media.vandal.net/t200/15191/20134794215_1.jpg', 3),
(9, ' Disco Elysium: The Final Cut', '30/3/2021', 'Aventura', 'The Final Cut es la edición definitiva del exitoso juego de rol. Persiga sus sueños políticos en nuevas misiones, conozca y pregunte a más habitantes de la ciudad y explore un área adicional.Saca aún más partido a este galardonado mundo abierto. Eres un detective con un sistema de habilidades único a tu disposición y una manzana entera para abrirte camino. Interrogar a personajes inolvidables, cometer asesinatos o aceptar sobornos. Conviértete en un héroe o en un absoluto desastre de ser humano.', 'https://media.vandal.net/t200/84265/disco-elysium-the-final-cut-202110121143197_7.jpg', 1),
(10, ' The Legend of Zelda: Breath of the Wild', '3/3/2017', 'Aventura', 'Se trata de la decimo-octava entrega de la saga Zelda, pero también es el primer juego de la popular serie para la consola de última generación de Nintendo', 'https://media.vandal.net/t200/43030/the-legend-of-zelda-breath-of-the-wild-201732131429_1.jpg', 1),
(11, ' Perfect Dark', '22/05/2000', 'Accion', 'Entra en la oscuridad... Como la nueva agente más prometedora del Instituto Carrington, Joanna Dark debe descubrir la verdad detrás de los recientes avances tecnológicos de dataDyne Corporation, avances que podrían tener graves consecuencias para la humanidad.', 'https://media.vandal.net/t200/80/perfect-dark-201961015512239_1.jpg', 3),
(12, 'NFL 2K1', '7/09/2000', 'Deporte', 'NFL 2K1 es la continuación del popular NFL 2K para Dreamcast. NFL 2K1 proporciona varias actualizaciones a la serie, incluidos libros de jugadas de equipos individuales, un modelo de pase mejorado, un juego de carrera mejorado y juego en línea.Este juego presenta los 31 equipos de la NFL, los modos de temporada y de franquicia, un modo de práctica, un editor de jugadas, más de 2000 animaciones capturadas por movimiento y la capacidad de descargar información actualizada de Internet.', 'https://media.vandal.net/t200/2366/nfl-2k1-2014413204444_1.jpg', 2),
(13, ' Metroid Prime', '17/11/2002', 'Accion', 'Samus regresa en una nueva misión para desentrañar el misterio detrás de los muros en ruinas esparcidos por Tallon IV. En Metroid Prime, jugarás el papel de este cazarrecompensas y verás el mundo a través de su visor, que muestra información que va desde los niveles de energía actuales hasta las municiones.', 'https://media.vandal.net/t200/81/2012623102943_1.jpg', 3),
(14, ' Grand Theft Auto III', '22/10/2001', 'Accion', 'Los jugadores se sitúan en el corazón de su propia película de gángsters y se dejan llevar por una ciudad tridimensional completamente realizada con un elenco de cientos, más de 50 vehículos, que van desde autos deportivos hasta camiones de helados y desde botes hasta autobuses, 3 horas de música, que incluye ópera, reggae, house, drum and bass, pop y disco, y una gran variedad de armas listas para la calle.', 'https://media.vandal.net/t200/223/grand-theft-auto-3-201610519855_1.jpg', 3),
(15, ' Super Mario Odyssey', '27/10/2017', 'Aventura', 'Nueva evolución del estilo de juego Mario Sandbox. Mario se embarca en un nuevo viaje a través de mundos desconocidos, corriendo y saltando a través de enormes mundos en 3D en el primer juego de Mario estilo sandbox desde Super Mario 64 y Super Mario Sunshine. Navega entre mundos expansivos a bordo de una aeronave y realiza acciones completamente nuevas, como arrojar la gorra de Mario.', 'https://media.vandal.net/t200/43395/super-mario-odyssey-2017102611035_25.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `password`) VALUES
(1, 'admin1', '$2y$10$opIR04W.qxe8UvYn/KmYje2Rf4GgPRQ7P6KJZLIiNAFIWyeHBA9xy');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorie`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorias` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
