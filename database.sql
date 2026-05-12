-- UNAD - Proyecto de Grado: Gestión de Inventarios Tagua
-- Estructura inicial de la base de datos

CREATE DATABASE IF NOT EXISTS inventario_tagua;
USE inventario_tagua;

-- 1. Tabla de Materia Prima (Semilla de Tagua)
CREATE TABLE IF NOT EXISTS materia_prima (
    id_material INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(200) NOT NULL,
    peso_inicial_kg DECIMAL(10,2) NOT NULL,
    fecha_ingreso TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 2. Tabla de Productos Terminados (Artesanías)
CREATE TABLE IF NOT EXISTS productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artesania VARCHAR(150) NOT NULL,
    categoria ENUM('Bisutería', 'Decoración', 'Figuras', 'Otros') DEFAULT 'Otros',
    stock_actual INT DEFAULT 0,
    precio_venta DECIMAL(10,2)
) ENGINE=InnoDB;

-- 3. Tabla de Movimientos (Entradas y Salidas de Stock)
CREATE TABLE IF NOT EXISTS movimientos (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    tipo_movimiento ENUM('Entrada', 'Salida') NOT NULL,
    cantidad INT NOT NULL,
    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON DELETE CASCADE
) ENGINE=InnoDB;
