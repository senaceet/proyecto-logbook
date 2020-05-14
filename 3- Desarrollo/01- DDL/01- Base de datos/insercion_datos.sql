USE LogBook;

INSERT INTO LogBook.servidor_correo (id_servidor, nombre_servidor)
VALUES (01, 'YAHOO'),	
       (02, 'OUTLOOK'),
       (03, 'GMAIL'),
       (04, 'iCloud Mail');
       
INSERT INTO LogBook.erro_r(id_error, nombre_error, fecha_error, hora_error )
VALUES (01, 'Error de conexión al servidor',            '2020:05:01', '10:30:00'),
       (02, 'Poco espacio en la Base de Datos',         '2020:05:02', '15:50:00'),
       (03, 'Error, su contraseña no es válida',        '2020:05:03', '22:33:00'),
       (04, 'Error, no tiene los permisos requeridos',  '2020:05:03', '08:27:00'),
       (05, 'Registro duplicado',                       '2020:05:04', '02:45:00');

INSERT INTO LogBook.rh (id_rh, nombre_rh)
VALUES (01, 'A+'),
       (02, 'A-'),
       (03, 'O+'),
       (04, 'O-'),
       (05, 'B+'),
       (06, 'B-'),
       (07, 'AB-'),
       (08, 'AB+');

INSERT INTO LogBook.tipo_documento (id_tipo_documento, siglas, nombre_tipo_documento) 
VALUES (01, 'CC', 'CÉDULA DE CIUDADANÍA'),
       (02, 'TI', 'TARJETA DE IDENTIDAD'),
       (03, 'PA', 'PASAPORTE'),
       (04, 'CE', 'CÉDULA DE EXTRANGERÍA');
       
INSERT INTO LogBook.rol (id_rol, nombre_rol)
VALUES (01, 'Administrador'),
       (02, 'Instructor'),
       (03, 'Instructor'),
       (04, 'Instructor'),
       (05, 'Aprendiz'),
       (06, 'Aprendiz'),
       (07, 'Aprendiz'),
       (08, 'Aprendiz'),
       (09, 'Aprendiz'),
       (10, 'Aprendiz'),
	   (11, 'Aprendiz'),
       (12, 'Aprendiz'),
       (13, 'Aprendiz'),
       (14, 'Aprendiz'),
       (15, 'Aprendiz'),
       (16, 'Aprendiz'),
	   (17, 'Administrativo'),
       (18, 'Administrativo'),
       (19, 'Administrativo'),
       (20, 'Administrativo'),
       (21, 'Administrativo'),
       (22, 'Administrativo');
       
INSERT INTO  LogBook.vinculacion (id_vinculacion, nombre_vinculacion, horas_trabajo)
VALUES (01, 'PLANTA', 48),
       (02, 'PRESTACIÓN DE SERVICIOS', 40),
       (03, 'MEDIO TIEMPO', 20);
       
INSERT INTO LogBook.especialidad (id_especialidad, nombre_especialidad)
       
       