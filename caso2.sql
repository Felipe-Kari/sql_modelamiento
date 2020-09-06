CREATE DATABASE caso2;

\c caso2;

CREATE TABLE alumnos(
nombre VARCHAR(150) NOT NULL,
rut VARCHAR(10) NOT NULL PRIMARY KEY
);

CREATE TABLE curso(
alumno_rut VARCHAR(10) NOT NULL,
FOREIGN KEY(alumno_rut) REFERENCES alumnos(rut)
);

CREATE TABLE profesores(
nombre VARCHAR(150) NOT NULL PRIMARY KEY,
departamento VARCHAR(50) NOT NULL
);

CREATE TABLE pruebas(
alumno_rut VARCHAR(10) NOT NULL,
profesor VARCHAR(150) NOT NULL,
puntaje INT NOT NULL,
FOREIGN KEY(alumno_rut) REFERENCES alumnos(rut),
FOREIGN KEY(profesor) REFERENCES profesores(nombre)
);
