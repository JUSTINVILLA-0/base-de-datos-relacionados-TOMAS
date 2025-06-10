CREATE DATABASE interestelar;
USE interestelar;

-- Tabla para personajes principales
CREATE TABLE personajes (
    id_personaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rol VARCHAR(100) NOT NULL,
    actor VARCHAR(100) NOT NULL
);

-- Tabla para planetas explorados
CREATE TABLE planetas (
    id_planeta INT AUTO_INCREMENT PRIMARY KEY,
    nombre_planeta VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    habitabilidad BOOLEAN NOT NULL
);

-- Tabla para naves espaciales
CREATE TABLE naves (
    id_nave INT AUTO_INCREMENT PRIMARY KEY,
    nombre_nave VARCHAR(100) NOT NULL,
    capacidad_tripulacion INT NOT NULL
);

-- Tabla para misiones exploratorias
CREATE TABLE misiones (
    id_mision INT AUTO_INCREMENT PRIMARY KEY,
    nombre_mision VARCHAR(100) NOT NULL,
    descripcion_mision TEXT NOT NULL,
    id_personaje_responsable INT,
    FOREIGN KEY (id_personaje_responsable) REFERENCES personajes(id_personaje)
);

-- Tabla para viajes espaciales
CREATE TABLE viajes (
    id_viaje INT AUTO_INCREMENT PRIMARY KEY,
    id_mision INT,
    id_planeta INT,
    fecha_viaje DATE NOT NULL,
    FOREIGN KEY (id_mision) REFERENCES misiones(id_mision),
    FOREIGN KEY (id_planeta) REFERENCES planetas(id_planeta)
);