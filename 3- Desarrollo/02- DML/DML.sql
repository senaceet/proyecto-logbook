USE logBook;

-- Inserción de datos pata la tabla <<espacialidad>> -- 
INSERT INTO especialidad (id_especialidad, nombre_especialidad)
VALUES (1, 'Electrónica'), 
       (2,'Electricidad'),
       (3,'Telecomunicaciones'),
       (4,'Teleinformática'),
       (5, 'Promover'),
       (6, 'Inglés'),
       (7, 'Cultura Física');

-- Inserción de datos pata la tabla <<jornada>> -- 
INSERT INTO jornada (id_jornada, nombre_jornada, horario_jornada)
VALUES (1, 'DIURNA',          '06:00 AM - 17:00 PM'),
       (2, 'NOCTURNA',        '17:00 PM - 22:00 PM'),
       (3, 'FINES DE SEMANA', '06:00 AM - 13:00 PM');
       
-- Inserción de datos pata la tabla <<trimestre>> --      
INSERT INTO trimestre (id_trimestre, num_trimestre)
VALUES (01,  1),
       (02,  2),
       (03,  3),
       (04,  4),
       (05,  5),
       (06,  6),
       (07,  7),
       (08,  8);

-- Inserción de datos pata la tabla <<rol>> --  
INSERT INTO rol (id_rol, nombre_rol)
VALUES (01, 'ADMINISTRADOR'),
       (02, 'ADMINISTRATIVO'),
       (03, 'APRENDIZ'),
       (04, 'INSTRUCTOR');
       
 -- Inserción de datos pata la tabla <<rh>> --  
INSERT INTO rh (id_rh, nombre_rh)
VALUES (01, 'A+ '),
       (02, 'A- '),
       (03, 'B+ '),
       (04, 'B- '),
	   (05, 'O+ '),
       (06, 'O- '),
       (07, 'AB+'),
	   (08, 'AB-');
                  
 -- Inserción de datos pata la tabla <<vinculacion>> --  
INSERT INTO vinculacion (id_vinculacion, nombre_vinculacion, horas_trabajo)
 VALUES (01, 'PLANTA',           8),
        (02, 'TIEMPO COMPLETO',  8),
        (03, 'MEDIO TIEMPO ',    8),  
        (04, 'CÁTEDRA',          8);

 -- Inserción de datos pata la tabla <<tipo documento>> --  
INSERT INTO tipo_documento (id_tipo_documento, siglas, nombre_tipo_documento)
  VALUES (01, 'CC', 'CÉDULA DE CIUDADANÍA'),
         (02, 'TI', 'TARJETA DE IDENTIDAD'),
         (03, 'PAS','PASAPORTE'),  
         (04, 'CE', 'CÉDULA DE EXTRANJERÍA');
 
  -- Inserción de datos pata la tabla <<log error>> --  
INSERT INTO log_error (id_error, nombre_error, fecha_error, hora_error)
  VALUES (01, 'Error, no se puede conectar con el servidor',               '0000:00:00:', '00:00:00'),
         (02, 'Error, base de de datos sin espacio de almacenamiento',     '0000:00:00:', '00:00:00'),
         (03, 'Error, contraseña incorrecta o inválida',                   '0000:00:00:', '00:00:00'),
         (04, 'Error, el usuario no existe',                               '0000:00:00:', '00:00:00'),
         (05, 'Error, no tiene los permisos requeridos para esta acción',  '0000:00:00:', '00:00:00'),
         (06, 'Error, no se puede conectar con la base de datos',          '0000:00:00:', '00:00:00');
         
  -- Inserción de datos pata la tabla <<servidor correo>> --   
INSERT INTO servidor_correo (id_servidor, nombre_servidor)
  VALUES (01, 'GOOGLE'),
		 (02, 'OUTLOOK'),
         (03, 'YAHOO');
         
  -- Inserción de datos pata la tabla <<usuario>> --  
INSERT INTO usuario (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, correo_electronico, foto, edad, telefono_usuario, contraseña, fk_id_tipo_documento, fk_id_rh, fk_id_rol)
  VALUES ('1030652581', 'Waldemar',    'Goodbanne',       'Suarez',  '',          'wgoodbanne0@ted.com',             'http://www.fotografia.com', 16, '570-500-9828', SHA('contraseña'), 01, 01, 01),
         ('1040652572', 'Gennifer',    'Van der Hoeven',  'Suarez',  'Ordoñez',   'gvanderhoeven1@hc360.com',        'http://www.fotografia.com', 18, '758-205-3898', SHA('contraseña'), 01, 02, 01),
         ('1050652563', 'Aldrich',     'Vallance',        'Suarez',  '',          'avallance2@mac.com',              'http://www.fotografia.com', 20, '131-609-3048', SHA('contraseña'), 01, 08, 02),
         ('1060652554', 'Quent',       'Dei',             'Suarez',  'Ordoñez',   'winger4@theguardian.com',         'http://www.fotografia.com', 25, '726-528-6865', SHA('contraseña'), 01, 03, 02),
         ('1070652545',	'Willabella', 'Inger',            'Suarez',  '',          'qdei3@1688.com',                  'http://www.fotografia.com', 18, '217-774-2076', SHA('contraseña'), 01, 05, 04),
         ('1080652536',	'Laetitia',   'Rilton',           'Suarez',  'Ordoñez',   'lrilton5@scientificamerican.com', 'http://www.fotografia.com', 15, '383-332-8359', SHA('contraseña'), 01, 07, 04),
         ('1090652527',	'Thayne',     'Buckles',          'Suarez',  '',          'tbuckles6@dmoz.org',              'http://www.fotografia.com', 25, '819-270-7874', SHA('contraseña'), 01, 06, 04),
         ('1000652518',	'Gal',        'Dunwoody',         'Suarez',  'Ordoñez',   'gdunwoody7@liveinternet.ru',      'http://www.fotografia.com', 23, '143-798-3932', SHA('contraseña'), 01, 04, 04),
         ('1110652509',	'Grover',     'Meyer',            'Suarez',  '',          'gmeyer8@flickr.com',              'http://www.fotografia.com', 27, '663-778-7455', SHA('contraseña'), 01, 01, 03),
         ('1120652510',	'Sonny',      'MacNess',          'Suarez',  'Ordoñez',   'smacness9@photobucket.com',       'http://www.fotografia.com', 22, '427-621-0029', SHA('contraseña'), 01, 03, 03),
    -- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
         ('95011103101', 'Corena',   'Hindshaw',          'Perez',  '',           'vocarmody0@statcounter.com',       'http://www.fotografia.com', 24, '648-717-4806', SHA('contraseña'), 02, 01, 03),
         ('94021103202', 'Othilia',  'Walls',             'Perez',  'Páez',       'gbleier1@ifeng.com',               'http://www.fotografia.com', 30, '378-269-9462', SHA('contraseña'), 02, 08, 03),
         ('93031103303', 'Eveline',  'McClenaghan',       'Perez',  '',           'dperton2@tumblr.com',              'http://www.fotografia.com', 16, '778-426-4031', SHA('contraseña'), 02, 01, 03),
         ('92041103404', 'Olenolin', 'Tight',             'Perez',  'Páez',       'shicklingbottom3@freewebs.com',    'http://www.fotografia.com', 17, '494-779-2763', SHA('contraseña'), 02, 08, 03),
         ('91051103505', 'Fidole',   'Pettecrew',         'Perez',  '',           'rreadshaw4@ustream.tv',            'http://www.fotografia.com', 18, '125-961-0480', SHA('contraseña'), 02, 01, 03),
         ('90061103606', 'Wye',      'Lowery',            'Perez',  'Páez',       'rdetoc5@cornell.edu',              'http://www.fotografia.com', 19, '193-157-2180', SHA('contraseña'), 02, 07, 03),
         ('91071103707', 'Karlyn',   'O''Garmen',         'Perez',  '',           'wschumacher6@nbcnews.com',         'http://www.fotografia.com', 22, '579-367-8074', SHA('contraseña'), 02, 01, 03),
         ('92081103808', 'Gustie',   'Loftus',            'Perez',  'Páez',       'mmaccafferky7@com.com',            'http://www.fotografia.com', 24, '104-753-7547', SHA('contraseña'), 02, 05, 03),
         ('93091103909', 'Karine',   'Cassley',           'Perez',  '',           'cmathison8@nba.com',               'http://www.fotografia.com', 26, '631-703-9827', SHA('contraseña'), 02, 01, 03),
         ('94001100001', 'Robinson', 'Uglow',             'Perez',  'Páez',       'lrighy9@geocities.jp',             'http://www.fotografia.com', 15, '827-143-8075', SHA('contraseña'), 02, 03, 03),
    -- ------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------- --
         ('CE1234567CO'  ,'Dylan',      'Ochterlony',     'Gómez', 'Reyes',   'rlubertoa@mail.ru',               'http://www.fotografia.com', 30, '767-391-2040', SHA('contraseña'), 03, 01, 03),
		 ('CA1234567CO'  ,'Halette',    'Scamerdine',     'Gómez', '',        'rconnaughtonb@arizona.edu',       'http://www.fotografia.com', 23, '565-704-5440', SHA('contraseña'), 03, 02, 03),
         ('RU1234567CO'  ,'Adorne',     'McCrachen',      'Gómez', 'Reyes',   'gbezantc@technorati.com',         'http://www.fotografia.com', 22, '224-713-4702', SHA('contraseña'), 03, 01, 03),
         ('OS1234567CO'  ,'Jacqueline', 'Tumilson',       'Gómez', 'Reyes',   'amurfilld@vkontakte.ru',          'http://www.fotografia.com', 18, '590-133-7718', SHA('contraseña'), 03, 07, 03),
         ('EY1234567CO'  ,'Auberon',    'Rymour',         'Gómez', '',        'cridinge@cbc.ca',                 'http://www.fotografia.com', 18, '857-692-6446', SHA('contraseña'), 03, 01, 03),
         ('MC1234567CO'  ,'Parrnell',   'Tyreman',        'Gómez', 'Reyes',   'amarkief@chron.com',              'http://www.fotografia.com', 18, '880-575-4847', SHA('contraseña'), 03, 03, 03),
         ('KA1234567CO'  ,'Guilbert',   'Haseley',        'Gómez', '',        'njoshg@oakley.com',               'http://www.fotografia.com', 18, '645-203-0228', SHA('contraseña'), 03, 02, 02),
         ('NU1234567CO'  ,'Madalena',   'Conklin',        'Gómez', 'Reyes',   'rcantillonh@t.co',                'http://www.fotografia.com', 18, '717-876-0404', SHA('contraseña'), 03, 01, 02),
         ('TE1234567CO'  ,'Gard',       'Boughtflower',   'Gómez', '',        'bharnimani@intel.com',            'http://www.fotografia.com', 18, '803-718-4814', SHA('contraseña'), 03, 06, 02),
         ('CN1234567CO'  ,'Nicoli',     'McCreagh',       'Gómez', 'Reyes',   'cdavidoviczj@comcast.net',        'http://www.fotografia.com', 18, '820-750-3843', SHA('contraseña'), 03, 04, 02);

   -- Inserción de datos para la tabla <<opinion>> --
INSERT INTO opinion (id_opinion, fecha_opinion, titulo, mensaje, estrellas, fk_id_tipo_documento, fk_numero_documento)
   VALUES (1,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1030652581'),
		  (2,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1040652572'),
          (3,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1050652563'),
          (4,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1060652554'),
          (5,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1070652545'),
          (6,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1080652536'),
          (7,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1090652527'),
          (8,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1000652518'),
          (9,  '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1110652509'),
          (10, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 01, '1120652510'),
      -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --
          (11, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '95011103101'),
          (12, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '94021103202'),
          (13, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '93031103303'),
          (14, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '92041103404'),
          (15, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '91051103505'),
          (16, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '90061103606'),
          (17, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '91071103707'),
          (18, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '92081103808'),
          (19, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '93091103909'),
          (20, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 02, '94001100001'),
      -- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --  
		  (21, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'CE1234567CO'),
          (22, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'CA1234567CO'),
          (23, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'RU1234567CO'),
          (24, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'OS1234567CO'),
          (25, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'EY1234567CO'),
          (26, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'MC1234567CO'),
          (27, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'KA1234567CO'),
          (28, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'NU1234567CO'),
          (29, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'TE1234567CO'),
          (30, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, tenetur saepe quae inventore, vitae quasi quod voluptatibus ipsa ullam qui voluptates optio, veritatis laudantium totam in reprehenderit beatae temporibus cumque.', 5, 03, 'CN1234567CO');
      -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -- 
-- Inserción de datos para la tabla <<administrador>> --
INSERT INTO administrador (fk_id_tipo_documento, fk_numero_documento)
VALUES   (01, '1030652581'),
		 (01, '1040652572');
              
-- Inserción de datos para la tabla <<instructor>> --  
INSERT INTO instructor (fk_id_tipo_documento, fk_numero_documento, fk_id_vinculacion, fk_id_especialidad)
VALUES  (01, '1070652545', 01, 1),
		(01, '1080652536', 02, 2),
		(01, '1090652527', 03, 3),
		(01, '1000652518', 04, 4);
        
-- Inserción de datos para la tabla <<programa>> --  
INSERT INTO programa (id_programa, fk_id_especialidad, siglas_programa, nombre_programa)
VALUE (01, 4, 'ADSI', 'Análisis y Desarrollo de sistemas de Información'),
      (02, 4, 'TPS', 'Técnico en Programación de Software'),
	  (03, 4, 'EBD', 'No recuerdo'),
      (04, 4, 'EDAM', 'No recuerdo');
 
 -- Inserción de datos para la tabla <<competencia>> --  
INSERT INTO competencia (id_competencia, descripcion_competencia, fk_id_programa, fk_id_especialidad)
VALUES (1, 'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.',                                      01, 4),
       (2, 'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',  02, 4),
	   (3, 'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',  03, 4),
	   (4, 'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA',                                                             04, 4);


 -- Inserción de datos para la tabla <<ficha>> --  
INSERT INTO ficha (id_ficha, numero_ficha, estado_ficha, fk_id_programa, fk_id_especialidad, fk_id_jornada, fk_id_trimestre, fk_id_competencia)
VALUES (01, 1963872, 'ACTIVA', 02, 4, 1, 01, 1),
       (02, 1547854, 'ACTIVA', 02, 4, 1, 02, 1),
       (03, 1754697, 'ACTIVA', 02, 4, 3, 03, 1),
	   (04, 3254698, 'ACTIVA', 02, 4, 1, 04, 1);


-- Inserción de datos para la tabla <<instructor ficha>> --  
INSERT INTO instructor_ficha (fk_id_ficha, fk_id_tipo_documento, fk_numero_documento)
VALUES (01, 01, '1070652545'),
       (02, 01, '1080652536'),
       (03, 01, '1090652527'),
       (04, 01, '1000652518');

-- Inserción de datos para la tabla <<aprendiz>> --  
INSERT INTO aprendiz (fk_id_tipo_documento, fk_numero_documento)
VALUES    (01, '1110652509'),
          (01, '1120652510'),
          (02, '95011103101'),
          (02, '94021103202'),
          (02, '93031103303'),
          (02, '92041103404'),
          (02, '91051103505'),
          (02, '90061103606'),
          (02, '91071103707'),
          (02, '92081103808'),
          (02, '93091103909'),
          (02, '94001100001'),
          (03, 'CE1234567CO'),
          (03, 'CA1234567CO'),
          (03, 'RU1234567CO'),
          (03, 'OS1234567CO'),
          (03, 'EY1234567CO'),
          (03, 'MC1234567CO');
          

-- Inserción de datos para la tabla <<aprendiz dicha>> -
INSERT INTO aprendiz_ficha (fk_id_tipo_documento, fk_numero_documento, fk_id_ficha)
 VALUES   (01, '1110652509',  01),
          (01, '1120652510',  01),
          (02, '95011103101', 01),
          (02, '94021103202', 01),
          (02, '93031103303', 01),
          (02, '92041103404', 01),
          (02, '91051103505', 01),
          (02, '90061103606', 01),
          (02, '91071103707', 01),
          (02, '92081103808', 01),
          (02, '93091103909', 01),
          (02, '94001100001', 01),
          (03, 'CE1234567CO', 01),
          (03, 'CA1234567CO', 01),
          (03, 'RU1234567CO', 01),
          (03, 'OS1234567CO', 01),
          (03, 'EY1234567CO', 01),
          (03, 'MC1234567CO', 01);

-- Inserción de datos para la tabla <<resultado aprendizaje>> --  
INSERT INTO resultado_aprendizaje (id_resultado_aprendizaje, numero_resultado_de_aprendizaje, descripcion_resultado_aprendizaje, fk_id_competencia, fk_id_programa, fk_id_especialidad)
VALUES (01, 437657, 'RELACIONAR LAS TABLAS CONSTRUIDAS PARA PRESENTAR LA INFORMACIÓN SOLICITADA EN EL DISEÑO.', 1, 02, 4),
       (02, 437657, 'RELACIONAR LAS TABLAS CONSTRUIDAS PARA PRESENTAR LA INFORMACIÓN SOLICITADA EN EL DISEÑO.', 1, 02, 4),
       (03, 637663, 'CONSTRUIR EL MAPA DE NAVEGACIÓN DE ACUERDO CON EL DISEÑO ENTREGADO PARA ORIENTAR AL USUARIO EN EL USO DEL APLICATIVO.', 1, 02, 4),
       (04, 437662, 'CONSTRUIR LA MATRIZ CRUD EN EL LENGUAJE DE PROGRAMACIÓN SELECCIONADO PARA VERIFICAR LA FUNCIONALIDAD DEL SISTEMA DE ACUERDO CON EL DISEÑO ENTREGADO.', 1, 02, 4),
       (05, 437664, 'CONSTRUIR LAS TABLAS QUE HACEN PARTE DEL DISEÑO DEL DIAGRAMA RELACIONAL EN EL MOTOR DE BASE DE DATOS EMPLEANDO LAS CUATRO FORMAS DE NORMALIZACIÓN.', 2, 02, 04),
       (06, 444087, 'Desarrollar permanentemente las habilidades psicomotrices y de pensamiento en la ejecución de los procesos de aprendizaje.', 2, 02, 04),
       (07, 444091, 'Generar procesos autónomos y de trabajo colaborativo permanentes, fortaleciendo el equilibrio de los componentes racionales y emocionales orientados hacia el Desarrollo Humano Integral.', 2, 02, 04),
       (08, 444043, 'Redimensionar permanentemente su proyecto de vida de acuerdo con las circunstancias del contexto y con visión prospectiva.', 3, 02, 04),
       (09, 444084, 'Asumir responsablemente los criterios de preservación y conservación del medio ambiente y de desarrollo sostenible, en el ejercicio de su desempeño laboral y social.', 3,  02, 04),
       (10, 444043, 'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.', 3,	 02, 04),
       (11, 444093, 'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.', 3, 02, 04);


 



    
      
       
       
       
       

       
     
    










  
 
 






