-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2022 a las 04:50:35
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dw2022_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Collenan'),
(3, 'Keaune', 'Reeves'),
(4, 'Carrie-Anne', 'Moss'),
(5, 'Kate', 'Winslet'),
(6, 'Leonardo', 'Dicaprio'),
(7, 'Mathew', 'McConaughy'),
(8, 'Anne', 'Hathaway'),
(9, 'San', 'Worthington'),
(10, 'Zoe', 'Saldana'),
(11, 'Jack', 'Nicholson'),
(12, 'Shelley', 'Duvall');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `dire_id` int(10) UNSIGNED NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL,
  `img` text DEFAULT NULL,
  `nac` varchar(50) DEFAULT NULL,
  `fec_nac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`, `img`, `nac`, `fec_nac`) VALUES
(1, 'Jon Watts', '', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Jon_Watts_by_Gage_Skidmore.jpg', 'Estadounidense', '1981-06-28'),
(2, 'Lana Wachowski', '', 'https://musicimage.xboxlive.com/catalog/video.contributor.33166500-0200-11db-89ca-0019b92a3933/image?locale=es-es&target=circle', 'Estadounidense', '1965-06-21'),
(3, 'James Cameron', '', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/James_Cameron_by_Gage_Skidmore.jpg', 'Canadiense', '1954-08-16'),
(4, 'Christopher Nolan', '', 'https://upload.wikimedia.org/wikipedia/commons/9/95/Christopher_Nolan_Cannes_2018.jpg', 'Británico-Estadounidense', '1970-07-30'),
(5, 'John McTiernan', '', 'https://upload.wikimedia.org/wikipedia/commons/b/b2/John_McTiernan_Deauville_2014_3.jpg', 'Estadounidense', '1951-01-08'),
(12, 'Stanley', 'Kubrick', 'https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/85/93/27/19813127.jpeg', 'Estadounidense-Británico', '1928-07-26'),
(13, 'Ridley', 'Scott', 'https://es.web.img3.acsta.net/pictures/14/12/10/16/47/273365.jpg', 'Británico', '1937-11-30'),
(14, 'Ron', 'Howard', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Ron_Howard_2011_Shankbone_2.JPG/800px-Ron_Howard_2011_Shankbone_2.JPG', 'Estadounidense', '1954-03-01'),
(15, 'Steven', 'Spilberg', 'https://upload.wikimedia.org/wikipedia/commons/6/67/Steven_Spielberg_by_Gage_Skidmore.jpg', 'Estadounidense', '1946-12-18'),
(16, 'Quentin', 'Tarantino', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Quentin_Tarantino_by_Gage_Skidmore.jpg/640px-Quentin_Tarantino_by_Gage_Skidmore.jpg', 'Indio-Estadounidense', '1970-08-06'),
(17, 'Night Shamalan  ', '', 'https://upload.wikimedia.org/wikipedia/commons/9/99/M._Night_Shyamalan_by_Gage_Skidmore.jpg', 'Indio-Estadounidense', '1963-03-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `pelis_id` int(10) UNSIGNED NOT NULL,
  `peli_nombre` varchar(255) NOT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_estreno` date NOT NULL,
  `peli_restricciones` varchar(10) DEFAULT NULL,
  `peli_dire_id` int(11) DEFAULT NULL,
  `peli_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`pelis_id`, `peli_nombre`, `peli_genero`, `peli_estreno`, `peli_restricciones`, `peli_dire_id`, `peli_img`) VALUES
(1, 'Spiderman: No hay hora', 'Accion', '2021-12-24', 'PG-13', 1, 'https://as01.epimg.net/meristation/imagenes/2021/12/16/reportajes/1639644481_655591_1640209353_noticia_normal.jpg'),
(2, 'Matrix', 'Ciencia Ficcion', '2021-12-24', 'PG-13', 1, 'https://i.blogs.es/4b103d/the-matrix-online/1366_2000.jpeg'),
(3, 'El codigo Enigma', 'Belica', '2019-08-29', 'PG-16', 1, 'http://hacerselacritica.com/wp-content/uploads/2015/02/imitationgame.jpg'),
(4, 'Titanic', 'Romantica', '1997-07-07', 'PG-13', 1, 'https://i.blogs.es/4a9cb1/titanic/840_560.jpeg'),
(5, 'Interestelar', 'Ciencia Ficcion', '2014-10-10', 'PG-13', 1, 'https://s03.s3c.es/imag/_v0/770x420/b/3/6/490x_Better-With-Movies-01.jpg'),
(15, 'Depredador', 'Ciencia Ficcion', '1987-12-24', 'PG-16', 1, 'https://i.blogs.es/cbca9c/predator-e1623418587427/450_1000.jpg'),
(16, 'Avatar', 'Ciencia Ficcion', '2009-10-18', 'PG', 8, 'https://as01.epimg.net/meristation/imagenes/2021/03/15/noticias/1615808713_039343_1615808762_noticia_normal.jpg'),
(17, 'El Resplandor', 'Terror', '1980-10-19', 'PG-13', 1, 'https://static2.abc.es/media/play/2020/06/13/resplandor-kMlD--1024x512@abc.jpg'),
(20, 'Alien', 'Ciencia Ficcion', '1980-01-12', 'PG-18', 7, 'https://img.ecartelera.com/noticias/fotos/66600/66663/1.jpg'),
(21, 'Alien', 'Ciencia Ficcion', '1980-01-24', 'PG-16', 13, 'https://img.ecartelera.com/noticias/fotos/66600/66663/1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'Spiderman'),
(2, 1, 'MJ'),
(3, 2, 'Neo'),
(4, 2, 'Trinity'),
(5, 4, 'Rose'),
(6, 4, 'Jack'),
(7, 5, 'Joseph Cooper'),
(8, 5, 'Amalia Brand'),
(9, 7, 'Jake Zully');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `per_id` int(10) UNSIGNED NOT NULL,
  `per_nombre` varchar(50) NOT NULL,
  `per_apellidos` varchar(50) NOT NULL,
  `per_fecha_nac` date DEFAULT NULL,
  `per_dni` char(8) NOT NULL,
  `per_genero` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`per_id`, `per_nombre`, `per_apellidos`, `per_fecha_nac`, `per_dni`, `per_genero`) VALUES
(1, 'Sofia', 'Perez', '1987-04-09', '11111111', 'F'),
(2, 'Malena', 'Ruiz', '1970-01-01', '22222222', 'F'),
(3, 'Pedro', 'Casas', '1980-10-10', '33333333', 'M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`pelis_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`per_id`),
  ADD UNIQUE KEY `per_dni` (`per_dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `pelis_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
