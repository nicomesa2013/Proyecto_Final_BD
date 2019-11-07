CREATE DATABASE Transito;

USE Transito;

CREATE TABLE Marca(
    idMarca double NOT NULL,
    nombreMarca varchar(15) NOT NULL,
    direccionMarca varchar(30) NOT NULL,
    PRIMARY KEY pk_idMarca (idMarca));

CREATE TABLE Modelo(
    numeroModelo double NOT NULL,
    nombre_Modelo varchar(15) NOT NULL,
    potenciaModelo double NOT NULL,
    idMarca double NOT NULL,
    PRIMARY KEY pk_numeroModelo (numeroModelo));

CREATE TABLE Vehiculo(
    modeloVehiculo double NOT NULL,
    fechaMatriculaVehiculo date NOT NULL,
    numeroModelo double NOT NULL,
    nitPersona double NOT NULL,
    PRIMARY KEY pk_modeloVehiculo (modeloVehiculo));

CREATE TABLE Persona(
    nitPersona double NOT NULL,
    nombrePersona varchar(15) NOT NULL,
    apellidosPersona varchar(20) NOT NULL,
    fechaNacimientoPersona date NOT NULL,
    callePersona varchar(30) NOT NULL,
    numeroCallePersona double NOT NULL,
    ciudadPersona varchar(30) NOT NULL,
    departamentoPersona varchar(30) NOT NULL,
    idTipoPersona double NOT NULL,
    PRIMARY KEY pk_nitPersona (nitPersona));

CREATE TABLE Tipo_Persona(
    idTipoPersona double NOT NULL,
    nombreTipoPersona varchar(15) NOT NULL,
    PRIMARY KEY pk_idTipoPersona (idTipoPersona));

CREATE TABLE Infraccion(
    numeroExpedienteInfraccion double NOT NULL,
    importeInfraccion 
    fechaInfraccion date NOT NULL,
    articuloInfraccion double NOT NULL,
    nitPersona double NOT NULL,
    idLugar double NOT NULL,
    PRIMARY KEY pk_numeroExpedienteInfraccion (numeroExpedienteInfraccion));

CREATE TABLE Lugar(
    idLugar double NOT NULL,
    carreteraLugar NOT NULL,
    kilometroLugar NOT NULL,
    direccion_Lugar varchar(30)
    PRIMARY KEY pk_idLugar (idLugar));

ALTER TABLE Modelo
ADD KEY I_idMarca (idMarca),
CONSTRAINT fk_idMarca 
FOREIGN KEY (idMarca)
REFERENCES Marca (idMarca);

