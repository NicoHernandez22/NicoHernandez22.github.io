-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 23:26:54
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(7) NOT NULL,
  `nombreProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `descrProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` tinyint(3) NOT NULL,
  `stock` int(5) NOT NULL,
  `idCategoria` int(1) NOT NULL,
  `idSubCategoria` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `descrProducto`, `precio`, `descuento`, `stock`, `idCategoria`, `idSubCategoria`) VALUES
(1, 'Guantes Anti Corte Starker', '<ul>\r\n<li>Guante Anticorte Nivel 3.</li>\r\n<li>Talles: 9 y 10.</li>\r\n<li>Único color.</li>\r\n<li>Norma EN 388 4543- EN 388:2003.</li>\r\n</ul', '250.00', 25, 162, 1, 1),
(2, 'Guantes de cuero y lona Nº2 Secur', '<ul>\r\n<li>Alto nivel de protección contra la abrasión y el desgarro.</li>\r\n<li>Cuero suave y durable.</li>\r\n<li>Costuras reforzadas.</li>\r\n<li>EN388 – (Riesgos Mecánicos): Abración 3, Corte 1, .Desgarro 4, Perforación 3.</li>\r\n<li>Talle: 10.</li>\r\n</ul>', '140.00', 0, 214, 1, 1),
(3, 'Guantes de trabajo latex Chem Master', '<ul>\r\n<li>Revestimiento completo.</li>\r\n<li>Puño enrollable.</li>\r\n<li>Acabado marca de rueda.</li>\r\n<li>Sin tratamiento.</li>\r\n<li>Indicador de desgaste.</li>\r\n<li>Disponible en pares individuales con bolsa polietileno con ojal.</li>\r\n</ul>', '190.00', 0, 54, 1, 1),
(4, 'Guantes de seguridad SRO Sayro', '<ul>\r\n<li>Guante de seguridad con 5 dedos, confeccionada con Vaqueta en la palma, y en la punta de los dedos.</li>\r\n<li>Este modelo cuenta con refuerzo interno en vaqueta.</li>\r\n<li>El dorso y la cara de los dedos son producidos con nylon y tiene elástico en el centro para un mejor posicionamiento del guante. Puño en material doblado para mejor calzado.</li>\r\n<li>Producto desarrollado y aprobado según BS EN 420: 2003 + A1: 2009, BS EN 388: 2016.</li>\r\n</ul>', '990.00', 20, 142, 1, 1),
(5, 'Casco de seguridad Milenium Libus', '<ul>\r\n<li>Diseño modular que permite el montaje de productos de protección facial, auditiva, ocular y solddura.</li>\r\n<li>Fabricado en polietileno, se distingue por su moderno diseño y excelente terminación.</li>\r\n<li>Hebilla trasera para anclaje de mentonera de tres puntos.</li>\r\n<li>Sin ventilación.</li>\r\n</ul>', '210.00', 0, 36, 1, 2),
(6, 'Adaptador de Casco facial auditivo Milenium', '<ul>\r\n<li>Soporte para montat conjuntamente una pantalla facial y un protector auditivo de copa de la línea L-300 al casco.</li>\r\n<li>Brinda al usuario protección facial, auditiva y craneana simultánea.</li>\r\n<li>Sistema de anclaje mecánico \"keep-up / keep-down\".</li>\r\n<li>Fabricado en Nylon.</li>\r\n<li>Cinco botones de anclaje universal.</li>\r\n<li>Articulado para rebatir la pantalla facial.</li>\r\n<li>Incluye el par de fichas adaptadoras para montaje en casos de la línea LIBUS.</li>\r\n</ul>', '240.00', 0, 245, 1, 2),
(7, 'Gorra con casquete plastico azúl', '<ul>\r\n<li>Diseñado para proteger el cuero cabelludo de raspadura o laceraciones causadas por golpes o imactos leves en la cabeza.</li>\r\n<li>Casquete plástico de policarbonato con almohadillas soft interna y externa para absorción de golpes.</li>\r\n<li>Visera estándar de 3 cm.</li>\r\n<li>Gorra textil deportiva con malla de ventilación y aplique de material reflectivo en las solapas de ajuste.</li>\r\n<li>Ergonómico y confortable.</li>\r\n<li>Tafilete absorbente de la transpiración en todo el contorno de la cabeza.</li>\r\n<li>Ergonómico y confortable.</li>\r\n<li>Desmontable.</li>\r\n</ul>', '140.00', 0, 147, 1, 2),
(8, 'Casco de seguridad 3M', '<ul>\r\n<li>Casco de protección craneana liviano, con arnés de ajuste a cremallera de ajuste fino y fácil colocación.</li>\r\n<li>Certificado para protección adicional frente a riesgo eléctrico.</li>\r\n<li>Aprobación ANSI/ISEA.</li>\r\n<li>Fabricado con polietileno de alta densidad.</li>\r\n<li>Doble Nervadura.</li>\r\n<li>Material Refractivo.</li>\r\n</ul>', '638.00', 0, 216, 1, 2),
(9, 'Visor para Casco Milenium Gris HC', '<ul>\r\n<li>Diseño monolente de gran tamaño; presenta 2 pestañas que permiten moverlo a su posición de trabajo sobre los ojos o rebatirlo al interior del casco sin contacto con el campo de visión.</li>\r\n<li>Lente de policarbonato con filtro UV.</li>\r\n<li>Soporte guía de montaje a casco en poliamida que también permite ajustar la inclinación del lente.</li>\r\n<li>Tornillo de acero inoxidable.</li>\r\n</ul>', '690.00', 15, 74, 1, 2),
(10, 'Guante antivibración Starke', '<ul>\r\n<li>Norma : EN 388:2003.</li>\r\n<li>Riesgos Mecánicos: EN 420:2003 y EN 10819:2013.</li>\r\n<li>Abrasión: Nivel 4.</li>\r\n<li>Resistencia Al Corte: Nivel 1.</li>\r\n<li>Resistencia Al Rasgado: Nivel 2.</li>\r\n<li>Perforación: Nivel 1.</li>\r\n</ul>', '420.00', 0, 32, 1, 1),
(11, 'Guante Thermal latex', '<ul>\r\n<li>Su fibra Acrílica de alto desempeño, le otorga gran resistencia a las bajas temperaturas.</li>\r\n<li>Recubierto de Látex el para un excelente grip.</li>\r\n<li>Puño elastizado reforzado.</li>\r\n<li>Ideal para trabajos que requieran precisión y buena protección a temperaturas bajas.</li>\r\n<li>Es respirable, no provoca malos olores.</li>\r\n<li>No produce reacciones alérgicas.</li>\r\n<li>Buena resistencia a la abrasión, desgarro y perforación.</li>\r\n</ul>', '145.00', 0, 12, 1, 1),
(12, 'Tapón Endoural Quantum Foam RD C/cordel', '<ul>\r\n<li>Tapón expansible que suministra protección contra ruido por inserción en el canal auditivo.</li>\r\n<li>Fabricado en espuma de poliuretano ultra-soft hipo-alergénica, brinda un confortable y efectivo sello.</li>\r\n<li>El diseño cónico y su baja velocidad de expansión aseguran una correcta inserción en el canal auditivo.\r\n<li>Descartable.</li>\r\n<li>Modelo detectable: Sólo con cordel.</li>\r\n<li>Incluye alma metálica en el cordel y un inserto metálico en el tapón que permite la detección de presencia ante pérdida.</li>\r\n<li>Disponible con cordón o sin el.</li>\r\n</ul>', '40.00', 0, 421, 1, 3),
(13, 'Protector auditivo de copa Alternative Libus', '<ul>\r\n<li>Diseño económico manteniendo las prestaciones de seguridad.</li>\r\n<li>Regulación de altura multipunto.</li>\r\n<li>Vincha plástica flexible para un perfecto ajuste de las orejeras al oído.</li>\r\n<li>Sistema de anclaje a la copa de un punto (tipo pivot): permite la regulación de altura, rotación y ángulo.</li>\r\n<li>Orejera lavable.</li>\r\n<li>Copa con orejera acolchada; confortable aún en jornadas prolongadas.</li>\r\n</ul>', '325.00', 0, 106, 1, 3),
(14, 'Protector auditivo de copa L-320 para casco Libus', '<ul>\r\n<li>Regulación de altura multipunto.</li>\r\n<li>Este modelo reemplaza la vincha por 2 horquillas con soporte giratorio.</li>\r\n<li>Brinda 2 posiciones de trabajo: sobre la oreja o retirado de la misma.\r\nEn posición de reposo la copa puede ser rotada 360° para que el usuario la ubique donde no incomode.</li>\r\n<li>Máxima atenuación y excelente prestación en ambientes con ruido de baja frecuencia.</li>\r\n<li>Permite montar cada copa en el anclaje del casco.</li>\r\n<li>La regulación de altura y rotación de las copas es la misma que el modelo Vincha.</li>\r\n<li>Incluye el par de fichas adaptadoras para montaje en cascos de la línea LIBUS.</li>\r\n</ul>', '640.00', 0, 36, 1, 3),
(15, 'Protector auditivo - H9', '<ul>\r\n<li>Protección a los trabajadores que se desempeñan en áreas donde los niveles de ruido superan los límites establecidos en el Decreto Supremo N° 594.</li>\r\n<li>Cuenta con copas de perfil medio y puntos pivotantes que permiten a los usuarios inclinar y ajustarlas para mayor comodidad y eficiencia.</li>\r\n<li>Sus almohadillas rellenas de líquido y espuma plástica mejoran su adherencia a los costados de la cara y disminuyen la transmisión de calor.</li>\r\n<li>Su arnés metálico, fabricado en acero inoxidable, distribuye la presión entregando una mayor comodidad y adaptación a las diversas características antropométricas del cráneo.</li>\r\n<li>Este arnés resiste torceduras y deformaciones, y mantiene constante la presión a lo largo del tiempo, asegurando de esta forma la mantención de la atenuación entregada.</li>\r\n</ul>', '2599.00', 30, 1, 1, 3),
(16, 'Protector auditivo para casco - X1C', '<ul>\r\n<li>Son protectores auditivos livianos de alto desempeño, diseñados para proteger frente a niveles elevados de ruido en una vasta gama de industrias, con diseño elegante.</li>\r\n<li>Presenta la ventaja de estar eléctricamente aislados con ensayos realizados por tercera parte.</li>\r\n<li>Las carcasas de las copas han sido fabricadas con un sistema premoldeado doble, a base de Acrilonitrilo Butadieno Estireno (ABS) y Poliuretano Termoplástico (TPU), lo cual brinda una mayor resistencia a los golpes, y constituye una eficiente barrera para evitar que el ruido ingrese al interior del fono.</li>\r\n<li>Dentro de las carcasas se han incluido nuevas espumas lo que permite mejorar la atenuación.</li>\r\n</ul>', '1991.00', 15, 0, 1, 3),
(17, 'Banda elastica para Solus 1000', '<ul>\r\n<li>Incorporan un marco liviano con un accesorio desmontable de espuma que cubre todo el marco del lente, lo que entrega una gran comodidad y mejora el sello entre el lente y el área ocular, limitando de esta forma la exposición de los ojos al polvo y otros agentes contaminantes.</li>\r\n<li>Los nuevos brazos delgados de goma, desmontables, mejoran el confort y pueden ser intercambiados por una banda elástica, que se vende por separado, la que permite transformar el lente en antiparra.</li>\r\n</ul>', '141.00', 0, 73, 1, 4),
(18, 'Anteojo Argon Elite', '<ul>\r\n<li>Diseñado para proteger el ojo contra golpes, impacto de partículas, polvo y chispas.</li>\r\n<li>Protección frontal y lateral.</li>\r\n<li>Diseño estilizado del modelo ARGON, que lo hace más liviano y ergonómico, pero con igual prestación.</li>\r\nLente de policarbonato.</li>\r\n<li>Filtro UV.</li>\r\n<li>Marco y patillas flexibles de nylon que proveen un ajustado calce a la cara.</li>\r\n<li>Patilla telescópica ajustable a 4 posiciones de largo.</li>\r\n<li>Tornillo de acero inoxidable.</li>\r\n</ul>', '75.00', 0, 65, 1, 4),
(19, 'Máscara soldador fotosensible Libus', '<ul>\r\n<li>Máscara de diseño ergonómico y liviano.</li>\r\n<li>Filtro de oscurecimiento automático.</li>\r\n<li>La máscara STRONG WELDER es compatible con los filtros LIBUS Serie 800, 1000, 1500 y 2000.</li>\r\n<li>Panel frontal reflectante del calor.</li>\r\n<li>Ajuste externo del grado de filtrado.</li>\r\n<li>Cobertura del cuello extendida.</li>\r\n<li>Ranuras de ventilación laterales para una rápida liberación del CO2 exhalado.</li>\r\n</ul>', '2700.00', 35, 24, 1, 4),
(20, 'Máscara De Soldar Apollo', '<ul>\r\n<li>Vidrio alzable.</li>\r\n<li>Resistente a altas temperaturas.</li>\r\n</ul>', '249.00', 0, 32, 1, 4),
(21, 'Lente Anteojo de Protección UV Solus 1000', '<ul>\r\n<li>El revestimiento antiempaño Scotchgard™ dura más que revestimientos tradicionales, lo que ayuda a aumentar el rendimiento de las gafas en entornos húmedos y con vapor.</li>\r\n<li>Los trabajadores pueden disfrutar de una vista confiable y más clara durante más tiempo, porque el recubrimiento, con su ingrediente activo, está adherido a la lente.</li>\r\n<li>El recubrimiento patentado conserva su efectividad durante al menos 25 lavados, lo que permite a los trabajadores usar sus gafas por más tiempo.</li>\r\n<li>El recubrimiento resiste la desinfección con lejía diluida o toallitas con alcohol sin perder su rendimiento antivaho.</li>\r\n<li>Los trabajadores pueden sentirse seguros usando las gafas con revestimiento antiempaño Scotchgard™ porque cumplen con los requisitos de ANSI Z87.1-2015 y CSA Z94.3</li>\r\n</ul>', '703.00', 0, 48, 1, 4),
(22, 'Protección respiratoria 8200 para partículas', '<ul>\r\n<li>Respirador desechable y económico.</li>\r\n<li>N95 Aprobado por NIOSH 42.CFR.84.</li>\r\n<li>Clip nasal ajustable ayuda a garantizar un mejor sellado.</li>\r\n<li>Diseño de dos correas con cuatro puntos de fijación de grapas ayuda a proporcionar un ajuste seguro.</li>\r\n</ul>', '76.00', 0, 57, 1, 5),
(23, 'Respirador 3M P2 9322+ Partículas', '<ul>\r\n<li>Diseño exclusivo de 3 paneles para mayor comfort, fácil comunicación y aceptación del usuario.</li>\r\n<li>De peso ligero y plegable para facilitar su almacenamiento y manejo. </li>\r\n<li>El material de sus bandas de sujeción se adaptan a cualquier tamaño de cabeza, sin aumentar la tensión, y su válvula de exhalación CPC en posición central minimiza la formación de aire caliente y humedad en el interior del respirador. </li>\r\n<li>El material en contacto con la piel es muy suave, por lo que la comodidad es mucho mayor. </li>\r\n<li>Protege contra polvos, neblinas y humos. </li>\r\n</ul>', '410.00', 0, 65, 1, 5),
(24, 'Respirador 3M P95 8577 Partículas Y Vapores Orgánicos', '<ul>\r\n<li>Aprobación NIOSH P95.</li>\r\n<li>Ayuda a proteger contra ciertas partículas aceitosas y no aceitosas.</li>\r\n<li>Capa de carbón que ayuda a reducir los niveles de olores molestos de vapores orgánicos.</li>\r\n<li>Su estructura antideformante, el diseño de sus bandas elásticas y el clip de aluminio en “M” aseguran un excelente sello adaptándose a un amplio rango de tamaños de cara.</li>\r\n</ul>', '931.00', 0, 67, 1, 5),
(25, 'Máscara de respirador MEDIA CARA reutilizable', '<ul>\r\n<li>Correa de nuca con anclaje rápido.</li>\r\n<li>Correas elásticas.</li>\r\n<li>Ajuste rápido independiente en todas las correas mediante sistema de hebilla y lengüeta.</li>\r\n<li>Cubierta desmontable de la válvula de exhalación. Solidaria al soporte de la pieza facial y al sistema de correas, lo que asegura la simetría durante el uso.</li>\r\n<li>Sistema bayoneta para el montaje de filtros.</li>\r\n<li>Arnés ergonómico para un correcto calce a la cabeza.</li>\r\n<li>Pieza facial fabricada en silicona. Junta facial desmontable que mantiene la forma y limpieza de la máscara luego de su uso.</li>\r\n</ul>', '1250.00', 10, 78, 1, 5),
(26, 'Botín con puntera Bompel', '<ul>\r\n<li><b>Tipo de cuero de la capellada:</b> Cuero relax, con estampa grabada, espesura 18/20linhas, en color amarillo.</li>\r\n<li><b>Tipo de forro de la gáspea:</b> Forración en no tejido.</li>\r\n<li><b>Cierre:</b> Cordones de poliéster.</li>\r\n<li><b>Puntera:</b> Acero resistente hasta 200J.</li>\r\n<li><b>Contrafuerte:</b> Material termoplástico.</li>\r\n<li><b>Plantilla de Montaje:</b> Sintética no tejido cosida en los sistema strobel.</li>\r\n<li><b>Plantilla de limpieza removible:</b> En espuma revestida por tejido.</li>\r\n<li><b>Suela:</b> En poliuretano (PU) doble densidad inyectado directamente en la capellada.</li>\r\n</ul>', '1060.00', 0, 68, 3, 11),
(27, 'Chaleco con reflectivo AE', '<ul>\r\n<li><b>Tela:</b>100% Polyester.</li>\r\n<li><b>Gramaje:</b>120 gramos.</li>\r\n<li><b>XL:</b>Ancho:68cm, Largo:63cm,</li>\r\n<li><b>XXL:</b>Ancho:70cm, Largo:67cm,</li>\r\n</ul>', '125.00', 0, 47, 2, 6),
(28, 'Retráctil en cinta 6 mts', '<ul>\r\n<li>Carcasa de polimero de alta resistencia.</li>\r\n<li>Manija para fácil transporte.</li>\r\n<li>Punto de enganche giratorio con testigo de caída incorporado.</li>\r\n<li>Mosquetón de aluminio forjado giratorio con testigo de caída de 55mm de apertura.</li>\r\n<li>Provisto con mosquetón eslabón y cor dón de recuperación.</li>\r\n<li>Norma IRAM 3605 EN 360</li>\r\n<li>CINTA de 6m x 25mm</li>\r\n<li>Peso: 2,40kg.</li>\r\n</ul>', '21800.00', 15, 24, 4, 17),
(29, 'Paisaje', '<ul>\r\n<li>Lindo</li>\r\n</ul>', '1000.00', 1, 1, 3, 11),
(30, 'ASK', '<ul>\r\n<li>ASGHA</li>\r\n</ul>', '12.00', 1, 33, 3, 19),
(31, 'we', '<ul>\r\n<li>we</li>\r\n</ul>', '23.00', 2, 54, 1, 19),
(32, 're', '<ul>\r\n<li>er</li>\r\n</ul>', '54.00', 4, 54, 5, 19),
(33, 'we', '<ul>\r\n<li>we</li>\r\n</ul>', '65.00', 3, 10, 1, 19),
(34, 'papu', '<ul>\r\n<li>piola</li>\r\n</ul>', '1666.00', 127, 1, 3, 14),
(35, 'Papu', '<ul>\r\n<li>asddas</li>\r\n</ul>', '1771.00', 127, 4, 5, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_categoria`
--

CREATE TABLE `producto_categoria` (
  `idCategoria` int(1) NOT NULL,
  `cat_producto` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto_categoria`
--

INSERT INTO `producto_categoria` (`idCategoria`, `cat_producto`) VALUES
(1, 'Protección'),
(2, 'Ropa'),
(3, 'Calzado'),
(4, 'Trabajo en Altura'),
(5, 'Seguridad Vial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_subcategoria`
--

CREATE TABLE `producto_subcategoria` (
  `idSubCategoria` int(2) NOT NULL,
  `subCat_producto` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto_subcategoria`
--

INSERT INTO `producto_subcategoria` (`idSubCategoria`, `subCat_producto`) VALUES
(1, 'Protección de Manos'),
(2, 'Protección Craneana'),
(3, 'Protección Auditiva'),
(4, 'Protección Ocular'),
(5, 'Protección Viral'),
(6, 'Chaleco'),
(7, 'Gabardina'),
(8, 'Camisa'),
(9, 'Campera y Buzo'),
(10, 'Pantalon'),
(11, 'Botines'),
(12, 'Zueco'),
(13, 'Bota'),
(14, 'Zapato'),
(15, 'Freno'),
(16, 'Arnes'),
(17, 'Auto Retractil'),
(18, 'Cabo'),
(19, 'Matacanto'),
(20, 'Lomo de Burro'),
(21, 'Vallas'),
(22, 'Cuña para Rueda'),
(23, 'Señal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `mail` text COLLATE utf8_spanish_ci NOT NULL,
  `user` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `pass` text COLLATE utf8_spanish_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `fnac` date NOT NULL,
  `rol` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `mail`, `user`, `apellido`, `pass`, `tel`, `fnac`, `rol`) VALUES
(1, 'pepe@gmail.com', 'Pepe', 'Banana', 'pepe1234', 99999999, '2022-10-13', 'Cliente'),
(2, 'admin@gmail.com', 'Admin', 'Admin', 'papafrita', 98765567, '1995-11-15', 'Administrador'),
(3, 'beb@gmail.com', 'Seba', 'Martinez', 'seba1234', 98888787, '2022-10-21', 'Vendedor'),
(4, 'bob@gmail.com', 'Santiago', 'Boborez', 'comprasanti', 98888767, '2022-09-29', 'Comprador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`,`idSubCategoria`),
  ADD KEY `idSubCategoria` (`idSubCategoria`);

--
-- Indices de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `producto_subcategoria`
--
ALTER TABLE `producto_subcategoria`
  ADD PRIMARY KEY (`idSubCategoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `producto_categoria` (`idCategoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idSubCategoria`) REFERENCES `producto_subcategoria` (`idSubCategoria`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
