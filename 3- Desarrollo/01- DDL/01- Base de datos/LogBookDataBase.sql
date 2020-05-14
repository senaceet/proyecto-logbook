/* ---------------------------------------------- BASE DE DATOS LOGBOOK - MÓDULO PARA GESTIÓN DE USUARIOS (CRUD)--------------------------------- */

CREATE DATABASE LogBook;
USE LogBook;

/*--------------------------------------------- DEFINICIÓN DE TABLAS -------------------------------------------*/
CREATE TABLE LogBook.servidor_correo(
id_servidor     INT NOT NULL,
nombre_servidor VARCHAR(50) NOT NULL);
ALTER TABLE LogBook.servidor_correo ADD PRIMARY KEY (id_servidor);

CREATE TABLE LogBook.erro_r(
id_error     INT NOT NULL,
nombre_error VARCHAR(50) NOT NULL,
fecha_error  DATE NOT NULL,
hora_error   TIME(6));
ALTER TABLE LogBook.erro_r ADD PRIMARY KEY (id_error);

CREATE TABLE LogBook.rh(
id_rh     INT NOT NULL,
nombre_rh VARCHAR(15) NOT NULL);
ALTER TABLE LogBook.rh ADD PRIMARY KEY (id_rh);

CREATE TABLE LogBook.tipo_documento(
id_tipo_documento    INT NOT NULL,
siglas VARCHAR(10)   NOT NULL,
nombre_tipo_documento VARCHAR(30));
ALTER TABLE LogBook.tipo_documento ADD PRIMARY KEY (id_tipo_documento);

CREATE TABLE LogBook.rol(
id_rol     INT NOT NULL,
nombre_rol VARCHAR(25) NOT NULL);
ALTER TABLE LogBook.rol ADD PRIMARY KEY (id_rol);

CREATE TABLE LogBook.vinculacion(
id_vinculacion     INT NOT NULL,
nombre_vinculacion VARCHAR(25) NOT NULL,
horas_trabajo      INT NOT NULL);
ALTER TABLE LogBook.vinculacion ADD PRIMARY KEY (id_vinculacion);

CREATE TABLE LogBook.especialidad(
id_especialidad     INT NOT NULL,
nombre_especialidad VARCHAR(25) NOT NULL);
ALTER TABLE LogBook.especialidad ADD PRIMARY KEY (id_especialidad);

CREATE TABLE LogBook.persona(
numero_documento   VARCHAR(20) NOT NULL,
primer_nombre      VARCHAR(30) NOT NULL,
segundo_nombre     VARCHAR(30),
primer_apellido    VARCHAR(30) NOT NULL,
segundo_apellido   VARCHAR(30),
correo_electronico VARCHAR(100) NOT NULL,
foto               BLOB NOT NULL,
edad               INT NOT NULL,
contraseña VARCHAR(20)   NOT NULL,
fk_id_tipo_documento     INT NOT NULL,
fk_id_rh                 INT NOT NULL,
fk_id_rol                INT NOT NULL);
ALTER TABLE LogBook.persona ADD PRIMARY KEY (numero_documento, fk_id_tipo_documento);
ALTER TABLE LogBook.persona ADD CONSTRAINT fkIdRh            FOREIGN KEY (fk_id_rh )  REFERENCES LogBook.rh (id_rh) ON UPDATE CASCADE;
ALTER TABLE LogBook.persona ADD CONSTRAINT fkIdRol           FOREIGN KEY (fk_id_rol ) REFERENCES LogBook.rol (id_rol) ON UPDATE CASCADE;
ALTER TABLE LogBook.persona ADD CONSTRAINT fkIdTipoDocumento FOREIGN KEY (fk_id_tipo_documento ) REFERENCES LogBook.tipo_documento (id_tipo_documento) ON UPDATE CASCADE;

CREATE TABLE LogBook.instructor(
fk_id_tipo_documento INT NOT NULL,
fk_numero_documento  VARCHAR(20) NOT NULL,
fk_id_vinculacion    INT NOT NULL,
fk_id_especialidad   INT NOT NULL);
ALTER TABLE LogBook.instructor  ADD CONSTRAINT fkIdEspecialidad   FOREIGN KEY (fk_id_especialidad)  REFERENCES LogBook.especialidad (id_especialidad)  ON UPDATE CASCADE;
ALTER TABLE LogBook.instructor  ADD CONSTRAINT fkIdVnculacion     FOREIGN KEY (fk_id_vinculacion)   REFERENCES LogBook.vinculacion (id_vinculacion)   ON UPDATE CASCADE;
ALTER TABLE LogBook.instructor  ADD CONSTRAINT fk4IdTipoDocumento FOREIGN KEY (fk_id_tipo_documento, fk_numero_documento )  REFERENCES LogBook.persona (fk_id_tipo_documento, numero_documento)  ON UPDATE CASCADE;
ALTER TABLE LogBook.instructor ADD PRIMARY KEY(fk_id_tipo_documento,fk_numero_documento);

CREATE TABLE LogBook.instructor_ficha(
id_ficha             INT NOT NULL,
fk_id_tipo_documento INT NOT NULL,
fk_numero_documento  VARCHAR(20) NOT NULL);
ALTER TABLE LogBook.instructor_ficha  ADD CONSTRAINT fk_IdTipoDocumento FOREIGN KEY (fk_id_tipo_documento, fk_numero_documento )  REFERENCES LogBook.instructor (fk_id_tipo_documento, fk_numero_documento)  ON UPDATE CASCADE;
ALTER TABLE LogBook.instructor_ficha  ADD PRIMARY KEY(id_ficha, fk_id_tipo_documento, fk_numero_documento);
/*--------------------------------------------- FIN DE DEFINICIÓN DE TABLAS -------------------------------------------*/

















