-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2017 a las 09:44:59
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reportes_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_oportunidades`
--

CREATE TABLE `crm_oportunidades` (
  `idoportunidad` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `usuario_asignado` varchar(150) DEFAULT NULL,
  `cliente` varchar(150) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `nombre_cliente` varchar(150) DEFAULT NULL,
  `etapa_venta` varchar(150) DEFAULT NULL,
  `fecha_etapa` date DEFAULT NULL,
  `fecha_identificacion` date DEFAULT NULL,
  `fecha_estimada_facturacion` date DEFAULT NULL,
  `bant` varchar(150) DEFAULT NULL,
  `monto_total` float(11,2) NOT NULL,
  `monto_sub_total` float(11,2) NOT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cumplimiento`
--

CREATE TABLE `cumplimiento` (
  `idcumplimiento` int(11) NOT NULL,
  `venta_anual` int(11) NOT NULL,
  `venta_mensual` int(11) NOT NULL,
  `mb` int(11) NOT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `sys_update` datetime DEFAULT NULL,
  `user_create` varchar(50) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idempresa` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `abreviatura` char(3) NOT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `sys_update` datetime DEFAULT NULL,
  `user_create` varchar(50) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio_correo`
--

CREATE TABLE `envio_correo` (
  `id` int(11) NOT NULL,
  `procesado` char(2) DEFAULT NULL,
  `error` varchar(400) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `tieneusuario` char(2) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `cuerpo1` varchar(250) NOT NULL,
  `cuerpo2` varchar(250) DEFAULT NULL,
  `cuerpo3` varchar(250) DEFAULT NULL,
  `cuerpo4` varchar(250) DEFAULT NULL,
  `cuerpo5` varchar(250) DEFAULT NULL,
  `sys_create` datetime NOT NULL,
  `sys_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `idhistorico` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `codigo_cliente` varchar(100) DEFAULT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `codigo_tipo_cliente` varchar(100) DEFAULT NULL,
  `tipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente_2` varchar(100) DEFAULT NULL,
  `compania` varchar(100) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `tipo_de_orden` varchar(100) DEFAULT NULL,
  `descripcion_de_tipo_orden` varchar(100) DEFAULT NULL,
  `numero_linea` varchar(100) DEFAULT NULL,
  `fecha_de_orden` date DEFAULT NULL,
  `documento_relacionado` varchar(100) DEFAULT NULL,
  `codigo_tipo_documento` varchar(100) DEFAULT NULL,
  `codigo_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` varchar(100) DEFAULT NULL,
  `cod_cat` varchar(100) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `cod_categoria_bi` varchar(100) DEFAULT NULL,
  `categoria_bi` varchar(100) DEFAULT NULL,
  `cod_subcat_bi` varchar(100) DEFAULT NULL,
  `sub_cat_bi` varchar(100) DEFAULT NULL,
  `codigo_marca` varchar(100) DEFAULT NULL,
  `marca_bi` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio_2` varchar(100) DEFAULT NULL,
  `codigo_clasificacion_producto` varchar(100) DEFAULT NULL,
  `clasificacion_producto` varchar(100) DEFAULT NULL,
  `codigo_vendedor` varchar(100) DEFAULT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `fecha_de_factura` date DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `descripcion_documento` varchar(100) DEFAULT NULL,
  `venta_bruta` float(11,2) NOT NULL,
  `venta_neta` float(11,2) NOT NULL,
  `costo_total` float(11,2) NOT NULL,
  `margen` float(11,2) NOT NULL,
  `p_margen` float(11,2) NOT NULL,
  `capex_opex` varchar(50) DEFAULT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_bak`
--

CREATE TABLE `historico_bak` (
  `idhistorico` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `codigo_cliente` varchar(100) DEFAULT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `codigo_tipo_cliente` varchar(100) DEFAULT NULL,
  `tipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente_2` varchar(100) DEFAULT NULL,
  `compania` varchar(100) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `tipo_de_orden` varchar(100) DEFAULT NULL,
  `descripcion_de_tipo_orden` varchar(100) DEFAULT NULL,
  `numero_linea` varchar(100) DEFAULT NULL,
  `fecha_de_orden` date DEFAULT NULL,
  `documento_relacionado` varchar(100) DEFAULT NULL,
  `codigo_tipo_documento` varchar(100) DEFAULT NULL,
  `codigo_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` varchar(100) DEFAULT NULL,
  `cod_cat` varchar(100) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `cod_categoria_bi` varchar(100) DEFAULT NULL,
  `categoria_bi` varchar(100) DEFAULT NULL,
  `cod_subcat_bi` varchar(100) DEFAULT NULL,
  `sub_cat_bi` varchar(100) DEFAULT NULL,
  `codigo_marca` varchar(100) DEFAULT NULL,
  `marca_bi` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio_2` varchar(100) DEFAULT NULL,
  `codigo_clasificacion_producto` varchar(100) DEFAULT NULL,
  `clasificacion_producto` varchar(100) DEFAULT NULL,
  `codigo_vendedor` varchar(100) DEFAULT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `fecha_de_factura` date DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `descripcion_documento` varchar(100) DEFAULT NULL,
  `venta_bruta` float(11,2) NOT NULL,
  `venta_neta` float(11,2) NOT NULL,
  `costo_total` float(11,2) NOT NULL,
  `margen` float(11,2) NOT NULL,
  `p_margen` float(11,2) NOT NULL,
  `capex_opex` varchar(50) DEFAULT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_bak_21062017`
--

CREATE TABLE `historico_bak_21062017` (
  `idhistorico` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `codigo_cliente` varchar(100) DEFAULT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `codigo_tipo_cliente` varchar(100) DEFAULT NULL,
  `tipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente` varchar(100) DEFAULT NULL,
  `subtipo_cliente_2` varchar(100) DEFAULT NULL,
  `compania` varchar(100) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `tipo_de_orden` varchar(100) DEFAULT NULL,
  `descripcion_de_tipo_orden` varchar(100) DEFAULT NULL,
  `numero_linea` varchar(100) DEFAULT NULL,
  `fecha_de_orden` date DEFAULT NULL,
  `documento_relacionado` varchar(100) DEFAULT NULL,
  `codigo_tipo_documento` varchar(100) DEFAULT NULL,
  `codigo_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` varchar(100) DEFAULT NULL,
  `cod_cat` varchar(100) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `cod_categoria_bi` varchar(100) DEFAULT NULL,
  `categoria_bi` varchar(100) DEFAULT NULL,
  `cod_subcat_bi` varchar(100) DEFAULT NULL,
  `sub_cat_bi` varchar(100) DEFAULT NULL,
  `codigo_marca` varchar(100) DEFAULT NULL,
  `marca_bi` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio_2` varchar(100) DEFAULT NULL,
  `codigo_clasificacion_producto` varchar(100) DEFAULT NULL,
  `clasificacion_producto` varchar(100) DEFAULT NULL,
  `codigo_vendedor` varchar(100) DEFAULT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `fecha_de_factura` date DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `descripcion_documento` varchar(100) DEFAULT NULL,
  `venta_bruta` float(11,2) NOT NULL,
  `venta_neta` float(11,2) NOT NULL,
  `costo_total` float(11,2) NOT NULL,
  `margen` float(11,2) NOT NULL,
  `p_margen` float(11,2) NOT NULL,
  `capex_opex` varchar(50) DEFAULT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `homologo`
--

CREATE TABLE `homologo` (
  `idparametro` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `erp_codigo` varchar(100) DEFAULT NULL,
  `erp_descripcion` varchar(100) DEFAULT NULL,
  `descripcion_homologado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla que permite homologar codigos: tipo_cliente, categoria_bi';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idinventario` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `bodega` varchar(50) DEFAULT NULL,
  `cod_articulo` varchar(50) DEFAULT NULL,
  `articulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `cat_item` varchar(50) DEFAULT NULL,
  `descp_cat` varchar(100) DEFAULT NULL,
  `cod_categoria_bi` varchar(50) DEFAULT NULL,
  `categoria_bi` varchar(100) DEFAULT NULL,
  `cod_subcat_bi` varchar(100) DEFAULT NULL,
  `sub_cat_bi` varchar(100) DEFAULT NULL,
  `codigo_marca` varchar(50) DEFAULT NULL,
  `marca_bi` varchar(100) DEFAULT NULL,
  `codigo_linea_negocio` varchar(50) DEFAULT NULL,
  `descripcion_cod_lin_negocio` varchar(100) DEFAULT NULL,
  `codigo_clasificacion_producto` varchar(50) DEFAULT NULL,
  `clasificacion_producto` varchar(100) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `costo_unitario` float(11,2) NOT NULL,
  `costo_total` float(11,2) NOT NULL,
  `dias` int(11) NOT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_cron`
--

CREATE TABLE `log_cron` (
  `idlogcron` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `archivo` varchar(250) NOT NULL,
  `error` varchar(500) DEFAULT NULL,
  `sys_start` datetime DEFAULT NULL,
  `sys_end` datetime DEFAULT NULL,
  `sys_create` datetime NOT NULL,
  `sys_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `detalle` varchar(150) NOT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `sys_update` datetime DEFAULT NULL,
  `user_create` varchar(50) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_menu`
--

CREATE TABLE `sys_menu` (
  `idmenu` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idpadre` int(11) DEFAULT NULL,
  `estatus` varchar(10) NOT NULL,
  `ventana` varchar(50) DEFAULT NULL,
  `framework` varchar(250) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `es_menu` char(2) NOT NULL,
  `icono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_menu_usuario`
--

CREATE TABLE `sys_menu_usuario` (
  `idmenu` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `select` tinyint(4) NOT NULL,
  `insert` tinyint(4) NOT NULL,
  `update` tinyint(4) NOT NULL,
  `delete` tinyint(4) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_parametros`
--

CREATE TABLE `sys_parametros` (
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `valor` varchar(250) NOT NULL,
  `sys_create` datetime NOT NULL,
  `sys_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_usuarios`
--

CREATE TABLE `sys_usuarios` (
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `contrasena` varchar(400) NOT NULL,
  `es_admin` char(2) NOT NULL,
  `supervisor` varchar(50) DEFAULT NULL,
  `idrol` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `codigo_vendedor` varchar(100) DEFAULT NULL,
  `codzona` char(3) DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `sys_update` datetime DEFAULT NULL,
  `user_create` varchar(50) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `totalizados`
--

CREATE TABLE `totalizados` (
  `usuario` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `total` float(11,2) NOT NULL,
  `margen` float(11,2) NOT NULL,
  `sys_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor_supervisor`
--

CREATE TABLE `vendedor_supervisor` (
  `idempresa` int(11) NOT NULL,
  `codigo_vendedor` varchar(100) NOT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `supervisor` varchar(50) DEFAULT NULL,
  `idrol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `codzona` char(3) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `sys_update` datetime DEFAULT NULL,
  `user_create` varchar(50) NOT NULL,
  `sys_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `crm_oportunidades`
--
ALTER TABLE `crm_oportunidades`
  ADD PRIMARY KEY (`idoportunidad`);

--
-- Indices de la tabla `cumplimiento`
--
ALTER TABLE `cumplimiento`
  ADD PRIMARY KEY (`idcumplimiento`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idempresa`),
  ADD UNIQUE KEY `abreviatura` (`abreviatura`);

--
-- Indices de la tabla `envio_correo`
--
ALTER TABLE `envio_correo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idhistorico`),
  ADD KEY `fecha_de_factura` (`fecha_de_factura`),
  ADD KEY `codigo_vendedor` (`codigo_vendedor`),
  ADD KEY `idempresa` (`idempresa`);

--
-- Indices de la tabla `historico_bak`
--
ALTER TABLE `historico_bak`
  ADD PRIMARY KEY (`idhistorico`),
  ADD KEY `fecha_de_factura` (`fecha_de_factura`),
  ADD KEY `codigo_vendedor` (`codigo_vendedor`),
  ADD KEY `idempresa` (`idempresa`);

--
-- Indices de la tabla `historico_bak_21062017`
--
ALTER TABLE `historico_bak_21062017`
  ADD PRIMARY KEY (`idhistorico`),
  ADD KEY `fecha_de_factura` (`fecha_de_factura`),
  ADD KEY `codigo_vendedor` (`codigo_vendedor`),
  ADD KEY `idempresa` (`idempresa`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idinventario`);

--
-- Indices de la tabla `log_cron`
--
ALTER TABLE `log_cron`
  ADD PRIMARY KEY (`idlogcron`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indices de la tabla `sys_menu_usuario`
--
ALTER TABLE `sys_menu_usuario`
  ADD PRIMARY KEY (`idmenu`,`usuario`);

--
-- Indices de la tabla `sys_parametros`
--
ALTER TABLE `sys_parametros`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `sys_usuarios`
--
ALTER TABLE `sys_usuarios`
  ADD PRIMARY KEY (`usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `totalizados`
--
ALTER TABLE `totalizados`
  ADD UNIQUE KEY `usuario_date` (`usuario`,`month`,`year`);

--
-- Indices de la tabla `vendedor_supervisor`
--
ALTER TABLE `vendedor_supervisor`
  ADD PRIMARY KEY (`codigo_vendedor`,`idempresa`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD UNIQUE KEY `codzona` (`codzona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `crm_oportunidades`
--
ALTER TABLE `crm_oportunidades`
  MODIFY `idoportunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7909;
--
-- AUTO_INCREMENT de la tabla `cumplimiento`
--
ALTER TABLE `cumplimiento`
  MODIFY `idcumplimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `envio_correo`
--
ALTER TABLE `envio_correo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `idhistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189019;
--
-- AUTO_INCREMENT de la tabla `historico_bak`
--
ALTER TABLE `historico_bak`
  MODIFY `idhistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3044;
--
-- AUTO_INCREMENT de la tabla `historico_bak_21062017`
--
ALTER TABLE `historico_bak_21062017`
  MODIFY `idhistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101978;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idinventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9205;
--
-- AUTO_INCREMENT de la tabla `log_cron`
--
ALTER TABLE `log_cron`
  MODIFY `idlogcron` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
