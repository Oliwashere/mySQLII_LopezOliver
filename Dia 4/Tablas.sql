-- #####################
-- ### Dia 4 - Tarea ###
-- #####################

create database autorental;

use database autorental;

CREATE TABLE Sucursal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono_fijo VARCHAR(20),
    celular VARCHAR(20),
    correo_electronico VARCHAR(100)
);

CREATE TABLE Empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sucursal_id INT,
    cedula VARCHAR(20) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    ciudad_residencia VARCHAR(100),
    celular VARCHAR(20),
    correo_electronico VARCHAR(100),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula VARCHAR(20) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    ciudad_residencia VARCHAR(100),
    celular VARCHAR(20),
    correo_electronico VARCHAR(100)
);

CREATE TABLE Vehiculo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_vehiculo VARCHAR(50) NOT NULL,
    placa VARCHAR(20) NOT NULL UNIQUE,
    referencia VARCHAR(100) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    puertas INT NOT NULL,
    capacidad INT NOT NULL,
    sunroof BOOLEAN,
    motor VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL
);

CREATE TABLE Alquiler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehiculo_id INT,
    cliente_id INT,
    empleado_id INT,
    sucursal_salida_id INT,
    fecha_salida DATE NOT NULL,
    sucursal_llegada_id INT,
    fecha_llegada DATE,
    fecha_esperada_llegada DATE NOT NULL,
    valor_alquiler_semana DECIMAL(10, 2) NOT NULL,
    valor_alquiler_dia DECIMAL(10, 2) NOT NULL,
    porcentaje_descuento DECIMAL(5, 2),
    valor_cotizado DECIMAL(10, 2) NOT NULL,
    valor_pagado DECIMAL(10, 2),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculo(id),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(id),
    FOREIGN KEY (sucursal_salida_id) REFERENCES Sucursal(id),
    FOREIGN KEY (sucursal_llegada_id) REFERENCES Sucursal(id)
);

INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Rambla de Catalunya 25', '95-2694991', '6523427911', 'sucursal_murcia@test.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle del Príncipe 99', '93-2666883', '6848050970', 'sucursal_zaragoza@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Calle Serrano 19', '92-4355682', '6281779750', 'sucursal_sevilla@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Avenida de América 74', '97-5464329', '6201031184', 'sucursal_madrid@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Paseo de Gracia 26', '95-3461452', '6583589914', 'sucursal_murcia@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Paseo de la Castellana 13', '95-8152751', '6204861668', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Calle Mayor 92', '97-2820852', '6888725910', 'sucursal_malaga@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle de Alcalá 66', '93-1268444', '6291856398', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Avenida del Sol 15', '95-5197836', '6785129323', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Paseo de Gracia 35', '93-5832901', '6892441691', 'sucursal_las_palmas@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Avenida del Sol 38', '97-1360341', '6661227274', 'sucursal_sevilla@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Calle Serrano 9', '96-7609737', '6774450344', 'sucursal_bilbao@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle de Alcalá 95', '92-7892156', '6532073374', 'sucursal_zaragoza@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Paseo de Gracia 41', '98-4131631', '6827469634', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Calle Serrano 3', '98-2623157', '6523758397', 'sucursal_sevilla@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle del Príncipe 91', '91-5319674', '6719126735', 'sucursal_zaragoza@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle de Alcalá 85', '96-2379174', '6291035670', 'sucursal_las_palmas@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Gran Vía 91', '95-2835207', '6714378790', 'sucursal_bilbao@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle Mayor 2', '96-2540512', '6892149927', 'sucursal_murcia@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Avenida de América 46', '92-2029947', '6478950580', 'sucursal_malaga@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle de Alcalá 41', '91-6177918', '6464257336', 'sucursal_madrid@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle Mayor 35', '98-2742746', '6578391164', 'sucursal_las_palmas@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Paseo de Gracia 68', '97-4947085', '6874102122', 'sucursal_barcelona@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Gran Vía 9', '98-2051194', '6771780177', 'sucursal_zaragoza@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Palma', 'Calle Serrano 25', '93-3096545', '6703480786', 'sucursal_palma@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Palma', 'Gran Vía 95', '96-4636726', '6904422383', 'sucursal_palma@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 59', '93-9472211', '6761047800', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Rambla de Catalunya 47', '97-5936611', '6474068361', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Paseo de la Castellana 82', '98-3055221', '6544442830', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Avenida del Sol 33', '91-6562588', '6488660712', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle Mayor 96', '91-2195153', '6666216986', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle de Alcalá 54', '98-6586643', '6486415581', 'sucursal_zaragoza@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Avenida del Sol 28', '97-3276588', '6848011870', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Avenida del Sol 46', '97-3316246', '6529896161', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle del Príncipe 72', '96-3698298', '6522357862', 'sucursal_murcia@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle de Alcalá 21', '96-8696757', '6896675180', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle de Alcalá 17', '96-9733120', '6574866825', 'sucursal_zaragoza@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Paseo de la Castellana 14', '92-1423346', '6731270867', 'sucursal_malaga@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Gran Vía 4', '95-7480366', '6499182544', 'sucursal_zaragoza@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle de Alcalá 26', '96-2819607', '6552337542', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Paseo de la Castellana 78', '91-7346126', '6281997482', 'sucursal_madrid@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Paseo de la Castellana 55', '91-9320856', '6201128197', 'sucursal_murcia@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Avenida del Sol 69', '97-3021033', '6864778284', 'sucursal_malaga@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle Mayor 47', '92-7878995', '6729915415', 'sucursal_murcia@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Gran Vía 96', '98-6448467', '6247480951', 'sucursal_madrid@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Paseo de Gracia 13', '96-7844975', '6651658594', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Gran Vía 43', '93-5465973', '6216338545', 'sucursal_murcia@example.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle de Alcalá 34', '91-9638628', '6215643648', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Avenida de América 24', '91-4726621', '6672301291', 'sucursal_sevilla@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Calle de Alcalá 33', '91-8264465', '6711714190', 'sucursal_barcelona@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Palma', 'Paseo de Gracia 55', '98-7071805', '6502469355', 'sucursal_palma@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Gran Vía 56', '91-1414382', '6825172140', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 8', '95-3755712', '6784785452', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Paseo de la Castellana 18', '95-3468930', '6835206506', 'sucursal_madrid@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Avenida del Sol 30', '96-6160581', '6834226204', 'sucursal_sevilla@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 96', '95-6220514', '6644703488', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Zaragoza', 'Calle Mayor 67', '95-7190072', '6659579050', 'sucursal_zaragoza@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Avenida de América 91', '98-1934252', '6811196310', 'sucursal_murcia@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Paseo de Gracia 87', '96-4790278', '6838953543', 'sucursal_las_palmas@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Paseo de la Castellana 68', '92-6608368', '6624937808', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 27', '95-2227814', '6906193465', 'sucursal_las_palmas@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 57', '96-6357998', '6661057176', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Gran Vía 49', '91-7465065', '6662127493', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Paseo de Gracia 89', '98-7921528', '6211156596', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle Mayor 77', '91-5287426', '6743224311', 'sucursal_madrid@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle del Príncipe 17', '98-9435282', '6493371504', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Calle del Príncipe 33', '91-1283170', '6749934634', 'sucursal_sevilla@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Paseo de Gracia 24', '93-1185454', '6661903392', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Gran Vía 11', '97-4169470', '6253691420', 'sucursal_malaga@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle Mayor 49', '97-8041238', '6779455821', 'sucursal_madrid@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Calle Mayor 91', '92-5821345', '6622423360', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle Mayor 44', '92-7231711', '6787366690', 'sucursal_madrid@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Calle Serrano 55', '91-1580214', '6716255095', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Paseo de la Castellana 60', '95-5981094', '6282152591', 'sucursal_malaga@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Avenida de América 1', '96-3143731', '6677902654', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Paseo de Gracia 9', '92-3714580', '6815681947', 'sucursal_bilbao@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Calle de Alcalá 7', '96-2581682', '6825656937', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Palma', 'Paseo de Gracia 48', '98-7215780', '6642672295', 'sucursal_palma@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Sevilla', 'Calle Mayor 60', '92-6078241', '6241326767', 'sucursal_sevilla@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Calle de Alcalá 42', '96-6616684', '6274581850', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle Serrano 70', '91-9735201', '6754854310', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Gran Vía 10', '96-6034732', '6818526436', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Paseo de Gracia 72', '92-7126950', '6608684174', 'sucursal_malaga@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle de Alcalá 52', '92-3306015', '6674185635', 'sucursal_madrid@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Gran Vía 26', '95-8662748', '6246390487', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Gran Vía 54', '98-7892052', '6584867284', 'sucursal_madrid@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle de Alcalá 74', '96-6648127', '6605733643', 'sucursal_las_palmas@demo.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Málaga', 'Paseo de la Castellana 98', '96-3462589', '6862932415', 'sucursal_malaga@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Palma', 'Gran Vía 76', '92-4898314', '6731719646', 'sucursal_palma@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Barcelona', 'Calle Mayor 8', '95-1671412', '6824519674', 'sucursal_barcelona@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle de Alcalá 61', '92-4978231', '6834585245', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Calle Mayor 7', '93-8895683', '6816045217', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Calle de Alcalá 38', '93-8252698', '6576699681', 'sucursal_las_palmas@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Avenida de América 22', '93-6592025', '6836354594', 'sucursal_bilbao@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Murcia', 'Calle de Alcalá 94', '92-5458668', '6687009738', 'sucursal_murcia@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Las Palmas', 'Gran Vía 57', '98-6675964', '6703978612', 'sucursal_las_palmas@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Calle del Príncipe 93', '95-2215701', '6798746492', 'sucursal_madrid@sample.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Bilbao', 'Paseo de la Castellana 89', '93-6757908', '6822286702', 'sucursal_bilbao@dummy.com');
INSERT INTO Sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES ('Madrid', 'Paseo de la Castellana 66', '96-9868932', '6608024261', 'sucursal_madrid@sample.com');

INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000001A', 'Carlos', 'Gómez', 'Calle Luna 1', 'Madrid', '600000001', 'carlos.gomez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000002B', 'Ana', 'Martínez', 'Calle Sol 2', 'Barcelona', '600000002', 'ana.martinez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000003C', 'Luis', 'Fernández', 'Calle Estrella 3', 'Valencia', '600000003', 'luis.fernandez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000004D', 'María', 'López', 'Calle Rayo 4', 'Sevilla', '600000004', 'maria.lopez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000005E', 'Pedro', 'García', 'Calle Trueno 5', 'Zaragoza', '600000005', 'pedro.garcia@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000006F', 'Lucía', 'Martín', 'Calle Cometa 6', 'Málaga', '600000006', 'lucia.martin@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000007G', 'Javier', 'Rodríguez', 'Calle Nube 7', 'Murcia', '600000007', 'javier.rodriguez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000008H', 'Sara', 'Sánchez', 'Calle Tormenta 8', 'Palma', '600000008', 'sara.sanchez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000009I', 'David', 'Pérez', 'Calle Viento 9', 'Bilbao', '600000009', 'david.perez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000010J', 'Marta', 'Ramírez', 'Calle Lluvia 10', 'Las Palmas', '600000010', 'marta.ramirez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000011K', 'Carlos', 'Vega', 'Calle Luna 11', 'Madrid', '600000011', 'carlos.vega@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000012L', 'Ana', 'Morales', 'Calle Sol 12', 'Barcelona', '600000012', 'ana.morales@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000013M', 'Luis', 'Navarro', 'Calle Estrella 13', 'Valencia', '600000013', 'luis.navarro@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000014N', 'María', 'Jiménez', 'Calle Rayo 14', 'Sevilla', '600000014', 'maria.jimenez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000015O', 'Pedro', 'Ruiz', 'Calle Trueno 15', 'Zaragoza', '600000015', 'pedro.ruiz@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000016P', 'Lucía', 'Herrera', 'Calle Cometa 16', 'Málaga', '600000016', 'lucia.herrera@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000017Q', 'Javier', 'Torres', 'Calle Nube 17', 'Murcia', '600000017', 'javier.torres@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000018R', 'Sara', 'Romero', 'Calle Tormenta 18', 'Palma', '600000018', 'sara.romero@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000019S', 'David', 'Ortega', 'Calle Viento 19', 'Bilbao', '600000019', 'david.ortega@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000020T', 'Marta', 'Giménez', 'Calle Lluvia 20', 'Las Palmas', '600000020', 'marta.gimenez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000021U', 'Carlos', 'Román', 'Calle Luna 21', 'Madrid', '600000021', 'carlos.roman@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000022V', 'Ana', 'Silva', 'Calle Sol 22', 'Barcelona', '600000022', 'ana.silva@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000023W', 'Luis', 'Mendoza', 'Calle Estrella 23', 'Valencia', '600000023', 'luis.mendoza@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000024X', 'María', 'Suárez', 'Calle Rayo 24', 'Sevilla', '600000024', 'maria.suarez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000025Y', 'Pedro', 'Castro', 'Calle Trueno 25', 'Zaragoza', '600000025', 'pedro.castro@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000026Z', 'Lucía', 'Ibáñez', 'Calle Cometa 26', 'Málaga', '600000026', 'lucia.ibanez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000027A', 'Javier', 'Domínguez', 'Calle Nube 27', 'Murcia', '600000027', 'javier.dominguez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000028B', 'Sara', 'Carrasco', 'Calle Tormenta 28', 'Palma', '600000028', 'sara.carrasco@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000029C', 'David', 'Gil', 'Calle Viento 29', 'Bilbao', '600000029', 'david.gil@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000030D', 'Marta', 'Martínez', 'Calle Lluvia 30', 'Las Palmas', '600000030', 'marta.martinez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000031E', 'Carlos', 'Santos', 'Calle Luna 31', 'Madrid', '600000031', 'carlos.santos@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000032F', 'Ana', 'Ortega', 'Calle Sol 32', 'Barcelona', '600000032', 'ana.ortega@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000033G', 'Luis', 'Vargas', 'Calle Estrella 33', 'Valencia', '600000033', 'luis.vargas@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000034H', 'María', 'Ramos', 'Calle Rayo 34', 'Sevilla', '600000034', 'maria.ramos@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000035I', 'Pedro', 'Romero', 'Calle Trueno 35', 'Zaragoza', '600000035', 'pedro.romero@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000036J', 'Lucía', 'González', 'Calle Cometa 36', 'Málaga', '600000036', 'lucia.gonzalez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000037K', 'Javier', 'Hernández', 'Calle Nube 37', 'Murcia', '600000037', 'javier.hernandez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000038L', 'Sara', 'Núñez', 'Calle Tormenta 38', 'Palma', '600000038', 'sara.nunez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000039M', 'David', 'Cabrera', 'Calle Viento 39', 'Bilbao', '600000039', 'david.cabrera@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000040N', 'Marta', 'Molina', 'Calle Lluvia 40', 'Las Palmas', '600000040', 'marta.molina@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000041O', 'Carlos', 'Peña', 'Calle Luna 41', 'Madrid', '600000041', 'carlos.pena@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000042P', 'Ana', 'Lara', 'Calle Sol 42', 'Barcelona', '600000042', 'ana.lara@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000043Q', 'Luis', 'Calvo', 'Calle Estrella 43', 'Valencia', '600000043', 'luis.calvo@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000044R', 'María', 'Gallego', 'Calle Rayo 44', 'Sevilla', '600000044', 'maria.gallego@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000045S', 'Pedro', 'Soto', 'Calle Trueno 45', 'Zaragoza', '600000045', 'pedro.soto@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000046T', 'Lucía', 'Roldán', 'Calle Cometa 46', 'Málaga', '600000046', 'lucia.roldan@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000047U', 'Javier', 'Iglesias', 'Calle Nube 47', 'Murcia', '600000047', 'javier.iglesias@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000048V', 'Sara', 'Rico', 'Calle Tormenta 48', 'Palma', '600000048', 'sara.rico@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000049W', 'David', 'López', 'Calle Viento 49', 'Bilbao', '600000049', 'david.lopez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000050X', 'Marta', 'Gómez', 'Calle Lluvia 50', 'Las Palmas', '600000050', 'marta.gomez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000051Y', 'Carlos', 'Méndez', 'Calle Luna 51', 'Madrid', '600000051', 'carlos.mendez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000052Z', 'Ana', 'Paredes', 'Calle Sol 52', 'Barcelona', '600000052', 'ana.paredes@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000053A', 'Luis', 'Cuevas', 'Calle Estrella 53', 'Valencia', '600000053', 'luis.cuevas@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000054B', 'María', 'Rubio', 'Calle Rayo 54', 'Sevilla', '600000054', 'maria.rubio@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000055C', 'Pedro', 'Salas', 'Calle Trueno 55', 'Zaragoza', '600000055', 'pedro.salas@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000056D', 'Lucía', 'Rivas', 'Calle Cometa 56', 'Málaga', '600000056', 'lucia.rivas@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000057E', 'Javier', 'Guerrero', 'Calle Nube 57', 'Murcia', '600000057', 'javier.guerrero@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000058F', 'Sara', 'Martínez', 'Calle Tormenta 58', 'Palma', '600000058', 'sara.martinez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000059G', 'David', 'Moreno', 'Calle Viento 59', 'Bilbao', '600000059', 'david.moreno@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000060H', 'Marta', 'Rodríguez', 'Calle Lluvia 60', 'Las Palmas', '600000060', 'marta.rodriguez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000061I', 'Carlos', 'Serrano', 'Calle Luna 61', 'Madrid', '600000061', 'carlos.serrano@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000062J', 'Ana', 'Mena', 'Calle Sol 62', 'Barcelona', '600000062', 'ana.mena@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000063K', 'Luis', 'Ávila', 'Calle Estrella 63', 'Valencia', '600000063', 'luis.avila@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000064L', 'María', 'Vera', 'Calle Rayo 64', 'Sevilla', '600000064', 'maria.vera@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000065M', 'Pedro', 'Navas', 'Calle Trueno 65', 'Zaragoza', '600000065', 'pedro.navas@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000066N', 'Lucía', 'Cano', 'Calle Cometa 66', 'Málaga', '600000066', 'lucia.cano@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000067O', 'Javier', 'Sanz', 'Calle Nube 67', 'Murcia', '600000067', 'javier.sanz@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000068P', 'Sara', 'Soria', 'Calle Tormenta 68', 'Palma', '600000068', 'sara.soria@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000069Q', 'David', 'Esteban', 'Calle Viento 69', 'Bilbao', '600000069', 'david.esteban@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000070R', 'Marta', 'Ramos', 'Calle Lluvia 70', 'Las Palmas', '600000070', 'marta.ramos@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000071S', 'Carlos', 'Miranda', 'Calle Luna 71', 'Madrid', '600000071', 'carlos.miranda@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000072T', 'Ana', 'Mora', 'Calle Sol 72', 'Barcelona', '600000072', 'ana.mora@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000073U', 'Luis', 'Prieto', 'Calle Estrella 73', 'Valencia', '600000073', 'luis.prieto@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000074V', 'María', 'Nieto', 'Calle Rayo 74', 'Sevilla', '600000074', 'maria.nieto@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000075W', 'Pedro', 'Delgado', 'Calle Trueno 75', 'Zaragoza', '600000075', 'pedro.delgado@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000076X', 'Lucía', 'Peña', 'Calle Cometa 76', 'Málaga', '600000076', 'lucia.pena@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000077Y', 'Javier', 'Moreno', 'Calle Nube 77', 'Murcia', '600000077', 'javier.moreno@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000078Z', 'Sara', 'Campos', 'Calle Tormenta 78', 'Palma', '600000078', 'sara.campos@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000079A', 'David', 'García', 'Calle Viento 79', 'Bilbao', '600000079', 'david.garcia@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000080B', 'Marta', 'Morales', 'Calle Lluvia 80', 'Las Palmas', '600000080', 'marta.morales@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000081C', 'Carlos', 'Benítez', 'Calle Luna 81', 'Madrid', '600000081', 'carlos.benitez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000082D', 'Ana', 'Navarro', 'Calle Sol 82', 'Barcelona', '600000082', 'ana.navarro@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000083E', 'Luis', 'Rey', 'Calle Estrella 83', 'Valencia', '600000083', 'luis.rey@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000084F', 'María', 'Gutiérrez', 'Calle Rayo 84', 'Sevilla', '600000084', 'maria.gutierrez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000085G', 'Pedro', 'Pérez', 'Calle Trueno 85', 'Zaragoza', '600000085', 'pedro.perez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000086H', 'Lucía', 'García', 'Calle Cometa 86', 'Málaga', '600000086', 'lucia.garcia@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000087I', 'Javier', 'Martínez', 'Calle Nube 87', 'Murcia', '600000087', 'javier.martinez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000088J', 'Sara', 'Sánchez', 'Calle Tormenta 88', 'Palma', '600000088', 'sara.sanchez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000089K', 'David', 'Ramírez', 'Calle Viento 89', 'Bilbao', '600000089', 'david.ramirez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000090L', 'Marta', 'Hernández', 'Calle Lluvia 90', 'Las Palmas', '600000090', 'marta.hernandez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (1, '10000091M', 'Carlos', 'Lozano', 'Calle Luna 91', 'Madrid', '600000091', 'carlos.lozano@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (2, '10000092N', 'Ana', 'Blanco', 'Calle Sol 92', 'Barcelona', '600000092', 'ana.blanco@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (3, '10000093O', 'Luis', 'Martínez', 'Calle Estrella 93', 'Valencia', '600000093', 'luis.martinez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (4, '10000094P', 'María', 'López', 'Calle Rayo 94', 'Sevilla', '600000094', 'maria.lopez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (5, '10000095Q', 'Pedro', 'Fernández', 'Calle Trueno 95', 'Zaragoza', '600000095', 'pedro.fernandez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (6, '10000096R', 'Lucía', 'Rodríguez', 'Calle Cometa 96', 'Málaga', '600000096', 'lucia.rodriguez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (7, '10000097S', 'Javier', 'Sánchez', 'Calle Nube 97', 'Murcia', '600000097', 'javier.sanchez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (8, '10000098T', 'Sara', 'Rodríguez', 'Calle Tormenta 98', 'Palma', '600000098', 'sara.rodriguez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (9, '10000099U', 'David', 'González', 'Calle Viento 99', 'Bilbao', '600000099', 'david.gonzalez@empresa.com');
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES (10, '10000100V', 'Marta', 'Martínez', 'Calle Lluvia 100', 'Las Palmas', '600000100', 'marta.martinez@empresa.com');




-- Desarrollado por Oliver López / T.I 1097911715