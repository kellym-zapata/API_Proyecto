-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2025 a las 05:47:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `be_leon_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'MRCH'),
(2, 'PREM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `id_departamento`) VALUES
(1, 'Leticia', 1),
(2, 'Medellín', 2),
(3, 'Arauca', 3),
(4, 'Barranquilla', 4),
(5, 'Bogotá', 5),
(6, 'Cartagena', 6),
(7, 'Tunja', 7),
(8, 'Manizales', 8),
(9, 'Florencia', 9),
(10, 'Yopal', 10),
(11, 'Popayán', 11),
(12, 'Valledupar', 12),
(13, 'Quibdó', 13),
(14, 'Montería', 14),
(15, 'Girardot', 15),
(16, 'Inírida', 16),
(17, 'San José del Guaviare', 17),
(18, 'Neiva', 18),
(19, 'Riohacha', 19),
(20, 'Santa Marta', 20),
(21, 'Villavicencio', 21),
(22, 'Pasto', 22),
(23, 'Cúcuta', 23),
(24, 'Mocoa', 24),
(25, 'Armenia', 25),
(26, 'Pereira', 26),
(27, 'San Andrés', 27),
(28, 'Bucaramanga', 28),
(29, 'Sincelejo', 29),
(30, 'Ibagué', 30),
(31, 'Cali', 31),
(32, 'Mitú', 32),
(33, 'Puerto Carreño', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id`, `nombre`) VALUES
(8, 'Coladores'),
(1, 'Eléctricos'),
(2, 'Filtros de agua'),
(3, 'Juegos de Ollas'),
(7, 'Ollas de presión'),
(4, 'Ollas grandes'),
(5, 'Paelleras'),
(9, 'Planchas'),
(6, 'Sartenes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `documento` varchar(20) NOT NULL,
  `id_tipodocumento` varchar(2) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`documento`, `id_tipodocumento`, `nombre_completo`, `sexo`, `fecha_nacimiento`, `correo`, `telefono`, `id_departamento`, `id_ciudad`, `direccion`) VALUES
('1037390814', 'TI', 'Claudia Mabel Chavarria Zapata', 'F', '1993-04-20', 'mabechavarria@gmail.com', '3204625158', 2, 2, '0'),
('3564790', 'CC', 'Hector Dario Zapata Moreno', 'M', '1963-09-19', 'notiene@gmail.com', '3116211967', 2, 2, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bogotá D.C.'),
(6, 'Bolívar'),
(7, 'Boyacá'),
(8, 'Caldas'),
(9, 'Caquetá'),
(10, 'Casanare'),
(11, 'Cauca'),
(12, 'Cesar'),
(13, 'Chocó'),
(14, 'Córdoba'),
(15, 'Cundinamarca'),
(16, 'Guainía'),
(17, 'Guaviare'),
(18, 'Huila'),
(19, 'La Guajira'),
(20, 'Magdalena'),
(21, 'Meta'),
(22, 'Nariño'),
(23, 'Norte de Santander'),
(24, 'Putumayo'),
(25, 'Quindío'),
(26, 'Risaralda'),
(27, 'San Andrés y Providencia'),
(28, 'Santander'),
(29, 'Sucre'),
(30, 'Tolima'),
(31, 'Valle del Cauca'),
(32, 'Vaupés'),
(33, 'Vichada'),
(34, 'Amazonas'),
(35, 'Antioquia'),
(36, 'Arauca'),
(37, 'Atlántico'),
(38, 'Bogotá D.C.'),
(39, 'Bolívar'),
(40, 'Boyacá'),
(41, 'Caldas'),
(42, 'Caquetá'),
(43, 'Casanare'),
(44, 'Cauca'),
(45, 'Cesar'),
(46, 'Chocó'),
(47, 'Córdoba'),
(48, 'Cundinamarca'),
(49, 'Guainía'),
(50, 'Guaviare'),
(51, 'Huila'),
(52, 'La Guajira'),
(53, 'Magdalena'),
(54, 'Meta'),
(55, 'Nariño'),
(56, 'Norte de Santander'),
(57, 'Putumayo'),
(58, 'Quindío'),
(59, 'Risaralda'),
(60, 'San Andrés y Providencia'),
(61, 'Santander'),
(62, 'Sucre'),
(63, 'Tolima'),
(64, 'Valle del Cauca'),
(65, 'Vaupés'),
(66, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` int(11) NOT NULL,
  `referencia_producto` varchar(50) DEFAULT NULL,
  `movimiento` varchar(20) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_movimiento` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(11) NOT NULL,
  `referencia_producto` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  `fecha_creacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `referencia`, `descripcion`, `categoria_id`, `clase_id`, `precio`, `stock`, `activo`, `fecha_creacion`) VALUES
(3, 'WF0451', 'CARTUCHO REEMPLAZO FRESCAPURE', 1, 2, 749000.00, 10, 1, '2025-07-28 19:50:30'),
(4, 'AP2500', 'CARTUCHO REEMPLAZO PUREAMBIENCE', 1, 1, 999000.00, 100, 1, '2025-07-28 19:50:30'),
(5, 'CO0101', 'CHOCOLATERA', 1, 5, 1799000.00, 100, 1, '2025-07-28 19:50:30'),
(6, 'CO1875', 'COLADOR 8QT', 1, 8, 1399000.00, 100, 1, '2025-07-28 19:50:30'),
(7, 'CO4808', 'COLADOR GRANDE', 1, 8, 1599000.00, 100, 1, '2025-07-28 19:50:30'),
(8, 'CO4807', 'COLADOR PEQUEÑO', 1, 8, 1399000.00, 100, 1, '2025-07-28 19:50:30'),
(9, 'CO1820', 'COLADOR PEQUEÑO', 1, 8, 899000.00, 100, 1, '2025-07-28 19:50:30'),
(10, 'PR1459', 'EXPRIMIDOR DE JUGO', 2, 1, 769000.00, 100, 1, '2025-07-28 19:50:30'),
(11, 'JU0027', 'EXTRACTOR DE JUGO CON RECETARIO', 1, 1, 8799000.00, 100, 1, '2025-07-28 19:50:30'),
(12, 'WF0412', 'FRESCAPURE 3500', 1, 2, 4799000.00, 100, 1, '2025-07-28 19:50:30'),
(13, 'CO9718', 'JUEGO DE SARTENES EASY RELEASE', 1, 6, 8499000.00, 100, 1, '2025-07-28 19:50:30'),
(14, 'CO4650', 'JUEGO DE SARTENES GOURMET', 1, 6, 5299000.00, 100, 1, '2025-07-28 19:50:30'),
(15, 'CO9660', 'OLLA 12 CUARTOS CON TAPA', 1, 4, 3899000.00, 100, 1, '2025-07-28 19:50:30'),
(16, 'CO6375', 'OLLA 12 CUARTOS CON TAPA 9CPS', 1, 4, 3999000.00, 100, 1, '2025-07-28 19:50:30'),
(17, 'CO6380', 'OLLA 20 CUARTOS CON TAPA 9CPS', 1, 4, 4599000.00, 100, 1, '2025-07-28 19:50:30'),
(18, 'CO9680', 'OLLA 30 CUARTOS CON TAPA', 1, 4, 5599000.00, 100, 1, '2025-07-28 19:50:30'),
(19, 'CO6385', 'OLLA 30 CUARTOS CON TAPA 9CPS', 1, 4, 5299000.00, 100, 1, '2025-07-28 19:50:30'),
(20, 'CO4715', 'OLLA 4 CUARTOS CON TAPA', 1, 4, 2699000.00, 100, 1, '2025-07-28 19:50:30'),
(21, 'CO4725', 'OLLA 8 CUARTOS CON TAPA', 1, 4, 3599000.00, 100, 1, '2025-07-28 19:50:30'),
(22, 'CO1258', 'OLLA DE PRESION 10LT', 1, 7, 5199000.00, 100, 1, '2025-07-28 19:50:30'),
(23, 'CO1253', 'OLLA DE PRESION 6LT', 1, 7, 4499000.00, 100, 1, '2025-07-28 19:50:30'),
(24, 'CO4760', 'PAELLERA DE 10\"', 1, 5, 2499000.00, 100, 1, '2025-07-28 19:50:30'),
(25, 'CO4740', 'PAELLERA DE 14\"', 1, 5, 4399000.00, 100, 1, '2025-07-28 19:50:30'),
(26, 'JU0001', 'PAQUETE ESPECIAL - EXTRACTOR DE JUGO RP', 1, 1, 10999000.00, 100, 1, '2025-07-28 19:50:30'),
(27, 'PR1037', 'PARRILA DE INDUCCIÓN', 2, 1, 2499000.00, 100, 1, '2025-07-28 19:50:30'),
(28, 'CO6589', 'PAVERA OVALADA', 1, 5, 4699000.00, 100, 1, '2025-07-28 19:50:30'),
(29, 'CO9685', 'PLANCHA DOBLE', 1, 9, 2699000.00, 100, 1, '2025-07-28 19:50:30'),
(30, 'CO9686', 'PLANCHA REDONDA', 1, 9, 2299000.00, 100, 1, '2025-07-28 19:50:30'),
(31, 'CO9687', 'PLANCHA SENSILLA', 1, 9, 1799000.00, 100, 1, '2025-07-28 19:50:30'),
(32, 'ES0003', 'POWER BLENDER C/RCTARIO', 1, 1, 7499000.00, 100, 1, '2025-07-28 19:50:30'),
(33, 'AP2000', 'PUREAMBIENCE COMPACTII', 1, 1, 7999000.00, 100, 1, '2025-07-28 19:50:30'),
(34, 'CO9713', 'SARTEN EASY RELEASE 10\"', 1, 6, 3299000.00, 100, 1, '2025-07-28 19:50:30'),
(35, 'CO9714 ', 'SARTEN EASY RELEASE 12\"', 1, 6, 3899000.00, 100, 1, '2025-07-28 19:50:30'),
(36, 'CO9712', 'SARTEN EASY RELEASE 8\"', 1, 6, 2599000.00, 100, 1, '2025-07-28 19:50:30'),
(37, 'CO4750', 'SARTEN GOURMET 10\"', 1, 6, 2999000.00, 100, 1, '2025-07-28 19:50:30'),
(38, 'CO4745', 'SARTEN GOURMET 8\"', 1, 6, 2499000.00, 100, 1, '2025-07-28 19:50:30'),
(39, 'CO4620', 'SISTEMA DE COCICNA CLASICO', 1, 3, 8999000.00, 100, 1, '2025-07-28 19:50:30'),
(40, 'CO4610', 'SISTEMA DE COCINA COMPLEMENTARIO', 1, 3, 7299000.00, 100, 1, '2025-07-28 19:50:30'),
(41, 'CO4600', 'SISTEMA DE COCINA ESENCIAL', 1, 3, 5999000.00, 100, 1, '2025-07-28 19:50:30'),
(42, 'CO4630', 'SISTEMA DE COCINA ESPECIAL', 1, 3, 11699000.00, 100, 1, '2025-07-28 19:50:30'),
(43, 'CO4640', 'SISTEMA DE COCINA FAMILIAR', 1, 3, 13699000.00, 100, 1, '2025-07-28 19:50:30'),
(44, 'CO4652', 'SISTEMA DE COCINA PROFESIONAL', 1, 3, 19999000.00, 100, 1, '2025-07-28 19:50:30'),
(45, 'RP6195', 'VALVULA DE DESVIO', 1, 2, 319000.00, 100, 1, '2025-07-28 19:50:30'),
(47, 'PR1460', '3 COLADOES EXTRACTOR DE JUGO', 2, 8, 1399000.00, 100, 1, '2025-08-02 16:29:44'),
(48, 'ZXC123', 'Tetera de acero inoxidable', 1, 2, 120000.00, 15, 0, '2025-08-06 20:54:46'),
(51, 'P001', 'Sartén 24cm', 1, 2, 85000.00, 50, 0, '2025-08-06 21:43:17'),
(53, 'P002', 'CARTUCHO REEMPLAZO PUREAMBIENCE', 1, 1, 999000.00, 100, 1, '2025-08-06 21:53:21'),
(54, 'P003', 'Sartén 24cm', 1, 2, 95000.00, 50, 1, '2025-08-06 21:54:23'),
(55, 'AP25001', 'CARTUCHO REEMPLAZO PUREAMBIENCE PRUEBAS', 1, 1, 899000.00, 79, 1, '2025-08-06 22:12:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'administrador'),
(5, 'cliente'),
(4, 'soporte'),
(2, 'supervisor'),
(3, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `co` varchar(1) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`co`, `descripcion`) VALUES
('F', 'Femenino'),
('M', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `sg` varchar(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`sg`, `nombre`) VALUES
('CC', 'Cédula de Ciudadanía'),
('CE', 'Cédula de Extranjería'),
('NI', 'NIT'),
('PP', 'Pasaporte'),
('TI', 'Tarjeta de Identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `nombre_completo`, `password_hash`, `rol_id`, `activo`) VALUES
(1, 'admin', 'Administrador', '$2y$10$dCF2f2Ws/V/4mbQQvfDcYuX8gb8vKdXOVMJwdKI4GzI3modaArae6', 1, 1),
(3, 'admin1', 'Administrador Principal', 'e31896104eb234536e15a9b92555115e18b491765c0209050a99461738754937', 1, 1),
(5, 'admin2', 'Administrador General', '$2y$10$wv6ZPE3bxg8ZB.ZX9N6Fquz9SWWyxq1sO9Bqxw/5IJ8n9X7ayhR2q', 1, 1),
(6, 'kelly123', 'Kelly Z. Pérez', '$2b$10$Dt48vVfZCx9zR0ebKfCS4.hew5RGKR.tuZiItnKt8SKNS8fnEhnSS', 2, 0),
(7, 'kelly_1996', 'Kelly Zapata Pruebas', '$2b$10$enZQ.C6/eCQYTxBfEBFSX.YUyvq2c04keHKV6bvkN/k2ZjddIRvdC', 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `tipodocumento_1` (`id_tipodocumento`),
  ADD KEY `departamento_1` (`id_departamento`),
  ADD KEY `ciudad_` (`id_ciudad`),
  ADD KEY `sexo_1` (`sexo`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referencia_producto` (`referencia_producto`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referencia_producto` (`referencia_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referencia` (`referencia`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `clase_id` (`clase_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`co`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`sg`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `ciudad_` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id`),
  ADD CONSTRAINT `departamento_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `sexo_1` FOREIGN KEY (`sexo`) REFERENCES `sexo` (`co`),
  ADD CONSTRAINT `tipodocumento_1` FOREIGN KEY (`id_tipodocumento`) REFERENCES `tipodocumento` (`sg`);

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_ibfk_1` FOREIGN KEY (`referencia_producto`) REFERENCES `productos` (`referencia`);

--
-- Filtros para la tabla `precios`
--
ALTER TABLE `precios`
  ADD CONSTRAINT `precios_ibfk_1` FOREIGN KEY (`referencia_producto`) REFERENCES `productos` (`referencia`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`clase_id`) REFERENCES `clase` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
