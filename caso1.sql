CREATE DATABASE caso1;

\c caso1;

CREATE TABLE trabajadores(
nombre VARCHAR(150) NOT NULL,
rut VARCHAR(10) NOT NULL PRIMARY KEY,
direccion VARCHAR(100) NOT NULL
);

CREATE TABLE departamentos(
nombre VARCHAR(50) NOT NULL PRIMARY KEY
);

CREATE TABLE trabajador_departamento(
trabajador_rut VARCHAR(10) NOT NULL,
departamento VARCHAR(50) NOT NULL,
FOREIGN KEY(trabajador_rut) REFERENCES trabajadores(rut),
FOREIGN KEY(departamento) REFERENCES departamentos(nombre)
);

CREATE TABLE drive(
trabajador_rut VARCHAR(10) NOT NULL,
liquidacion INT NOT NULL,
FOREIGN KEY(trabajador_rut) REFERENCES trabajadores(rut)
);
