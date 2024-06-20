##############################################
### Dia 1 - NORMALIZACIÓN DE BASE DE DATOS ###
##############################################

Create database ejercicio1;

use ejercicio1;

CREATE TABLE Medico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    poblacion VARCHAR(100),
    provincia VARCHAR(100),
    codigo_postal VARCHAR(10),
    nif VARCHAR(20),
    numero_seguridad_social VARCHAR(20),
    numero_colegiado VARCHAR(20),
    tipo VARCHAR(20)
);

CREATE TABLE Empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    poblacion VARCHAR(100),
    provincia VARCHAR(100),
    codigo_postal VARCHAR(10),
    nif VARCHAR(20),
    numero_seguridad_social VARCHAR(20),
    tipo VARCHAR(20)
);

CREATE TABLE Paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    codigo_postal VARCHAR(10),
    nif VARCHAR(20),
    numero_seguridad_social VARCHAR(20),
    medico_id INT,
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE HorarioConsulta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    medico_id INT,
    dia_semana VARCHAR(20),
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE Sustitucion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    medico_id INT,
    fecha_alta DATE,
    fecha_baja DATE,
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE Vacaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    tipo_empleado VARCHAR(20),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(id)
);

## Desarrollado por Oliver Lopez / ID 1097911715