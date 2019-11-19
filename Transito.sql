CREATE DATABASE Transito;

USE Transito;

CREATE TABLE Marca(
    idMarca double NOT NULL AUTO_INCREMENT,
    nombreMarca varchar(15) NOT NULL,
    direccionMarca varchar(30) NOT NULL,
    PRIMARY KEY (idMarca));

CREATE TABLE Modelo(
    numeroModelo double NOT NULL AUTO_INCREMENT,
    nombre_Modelo varchar(15) NOT NULL,
    potenciaModelo double NOT NULL,
    idMarca double NOT NULL,
    PRIMARY KEY (numeroModelo));

CREATE TABLE Vehiculo(
    idVehiculo double NOT NULL AUTO_INCREMENT,
    fechaMatriculaVehiculo varchar(15) NOT NULL,
    numeroModelo double NOT NULL,
    nitPersona double NOT NULL,
    PRIMARY KEY (idVehiculo));

CREATE TABLE Persona(
    nitPersona double NOT NULL,
    nombrePersona varchar(15) NOT NULL,
    apellidosPersona varchar(20) NOT NULL,
    fechaNacimientoPersona varchar(15) NOT NULL,
    callePersona varchar(30) NOT NULL,
    numeroCallePersona double NOT NULL,
    ciudadPersona varchar(30) NOT NULL,
    departamentoPersona varchar(30) NOT NULL,
    idTipoPersona double NOT NULL,
    PRIMARY KEY (nitPersona));

CREATE TABLE Tipo_Persona(
    idTipoPersona double NOT NULL AUTO_INCREMENT,
    nombreTipoPersona varchar(15) NOT NULL,
    PRIMARY KEY (idTipoPersona));

CREATE TABLE Infraccion(
    numeroExpedienteInfraccion double NOT NULL AUTO_INCREMENT,
    importeInfraccion double NOT NULL,
    fechaInfraccion varchar(15) NOT NULL,
    articuloInfraccion double NOT NULL,
    nitPersona double NOT NULL,
    idLugar double NOT NULL,
    PRIMARY KEY (numeroExpedienteInfraccion));

CREATE TABLE Lugar(
    idLugar double NOT NULL AUTO_INCREMENT,
    carreteraLugar varchar(15) NOT NULL,
    kilometroLugar double NOT NULL,
    ciudadLugar varchar(30),
    PRIMARY KEY (idLugar));

ALTER TABLE Modelo
ADD KEY I_idMarca (idMarca),
ADD CONSTRAINT fk_idMarca 
FOREIGN KEY (idMarca)
REFERENCES Marca (idMarca);

ALTER TABLE Vehiculo
ADD KEY I_numeroModelo (numeroModelo),
ADD KEY I_nitPersona (nitPersona),
ADD CONSTRAINT fk_numeroModelo
FOREIGN KEY (numeroModelo)
REFERENCES Modelo (numeroModelo),
ADD CONSTRAINT fk_nitPersona
FOREIGN KEY (nitPersona)
REFERENCES  Persona (nitPersona);

ALTER TABLE Persona
ADD KEY I_idTipoPersona (idTipoPersona),
ADD CONSTRAINT fk_idTipoPersona
FOREIGN KEY (idTipoPersona)
REFERENCES Tipo_Persona (idTipoPersona);

ALTER TABLE Infraccion
ADD KEY I_nitPersona (nitPersona),
ADD KEY I_idLugar (idLugar),
ADD CONSTRAINT fk_nitPersonaInf 
FOREIGN KEY (nitPersona)
REFERENCES Persona (nitPersona),
ADD CONSTRAINT fk_idLugar
FOREIGN KEY (idLugar)
REFERENCES Lugar (idLugar);

INSERT INTO Marca values (1,'Mazda','Calle 101');
INSERT INTO Marca values (NULL,'Chevrolet','Calle 101');
INSERT INTO Marca values (NULL,'Kia','Calle 101');
INSERT INTO Marca values (NULL,'Toyota','Calle 101');

INSERT INTO Modelo values (NULL,'Mazda2',1200,1);
INSERT INTO Modelo values (NULL,'Mazda3',1600,1);
INSERT INTO Modelo values (NULL,'CX-3',1600,1);
INSERT INTO Modelo values (NULL,'CX-5',2000,1);

SELECT nombre_Modelo FROM Modelo WHERE idMarca =  