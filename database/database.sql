CREATE DATABASE ESTUDIANTES;
USE ESTUDIANTES;

CREATE TABLE ESTUDIANTES(
     id_estudiante INT NOT NULL AUTO_INCREMENT,
     numero_documento VARCHAR(50) NOT NULL,
     tipo_documento VARCHAR(2) NOT NULL,
     nombre VARCHAR(30) NOT NULL,
     apellido VARCHAR(30) NOT NULL,
     codigo VARCHAR(20) NOT NULL,
     estado BOOLEAN NOT NULL DEFAULT 0,
     PRIMARY KEY(id_estudiante)
);

CREATE TABLE MATERIAS(
    id_materia INT NOT NULL AUTO_INCREMENT,
    nombre_materia VARCHAR(80) NOT NULL,
    creditos INT(2) NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    cupos INT(3) NOT NULL,
    estado BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY(id_materia)
);

CREATE TABLE INSCRIPCION_MATERIAS(
    estado_inscripcion BOOLEAN NOT NULL,
    id_estudiante INT NOT NULL,
    id_materia INT NOT NULL,
    PRIMARY KEY(id_estudiante,id_materia)
);


CREATE TABLE HISTORIAL_INSCRIPCIONES(
    fecha_inscripcion DATE NOT NULL,
    ip_origen VARCHAR(39) NOT NULL,
    evento VARCHAR(2) NOT NULL,
    id_estudiante INT NOT NULL,
    id_materia INT NOT NULL,
    PRIMARY KEY(id_estudiante,id_materia)
);

ALTER TABLE INSCRIPCION_MATERIAS ADD (
    CONSTRAINT ins_fk_ide FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTES(id_estudiante),
    CONSTRAINT ins_fk_idm FOREIGN KEY (id_materia) REFERENCES MATERIAS(id_materia)
);

ALTER TABLE HISTORIAL_INSCRIPCIONES ADD (
    CONSTRAINT his_fk_ide FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTES(id_estudiante),
    CONSTRAINT his_fk_idm FOREIGN KEY (id_materia) REFERENCES MATERIAS(id_materia)
);

-- ################################ Insertar datos en Estudiantes #######################
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('1073385271', 'CC', 'Camilo', 'Aguilar', '201521392');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('2184496382', 'CC', 'Santiago', 'Moreno', '201521393');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('3295597493', 'CC', 'Diego', 'Cepeda', '201521394');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('4306608504', 'CC', 'Jerson', 'Ruge', '201521395');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('5417719615', 'CC', 'Guillermo', 'Paez', '201521396');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('6528820726', 'CC', 'Sebastian', 'Chaparro', '201521397');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('7639931837', 'CC', 'Dario', 'Baron', '201521398');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('8740042948', 'CC', 'Maria', 'Latorre', '201521399');

-- ################################ Insertar datos en Materias #######################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingenieria de Software II', 4, '1', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Lenguajes Formales', 4, '2', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Sistemas Distribuidos', 3, '3', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Sistemas Operativos', 4, '4', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Transmision de Datos', 4, '5', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Trabajo de Campo', 4, '6', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Redes de Datos', 4, '7', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Inteligencia Computacional', 4, '8', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Arquitectura de Computadores', 3, '9', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Administracion', 3, '10', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva I', 3, '11', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva II', 3, '12', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Simulacion por Computador', 4, '13', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Seminario de Trabajo de Grado', 3, '14', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Auditoria de Sistemas', 3, '15', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Gerencia Informatica', 3, '16', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva III', 3, '17', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva IV', 3, '18', 20);

-- ################################ Insertar datos en Inscripcion_Materias #######################
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 1, 3);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 1, 15);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 1, 14);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 1, 13);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 2, 1);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 2, 3);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 2, 5);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 2, 8);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 2, 12);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 3, 1);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 3, 7);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 3, 12);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 3, 13);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 3, 18);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 4, 2);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 4, 6);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 4, 7);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 4, 14);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 6, 6);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 6, 7);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 7, 1);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 7, 7);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 7, 8);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 7, 13);
INSERT INTO INSCRIPCION_MATERIAS VALUES(TRUE, 8, 15);