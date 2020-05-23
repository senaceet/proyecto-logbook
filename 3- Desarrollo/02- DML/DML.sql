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
  INSERT INTO usuario (numero_documento, primer_nombre, segundo_nombre, correo_electronico, foto, edad, telefono_usuario, contraseña, fk_id_tipo_documento, fk_id_rh, fk_id_rol)
  VALUES ('1030652581', 'Waldemar',    'Goodbanne',      'wgoodbanne0@ted.com',             'http://www.fotografia.com', 16, '570-500-9828', SHA('contraseña'), 01, 01, 01),
         ('1040652572', 'Gennifer',    'Van der Hoeven', 'gvanderhoeven1@hc360.com',        'http://www.fotografia.com', 18, '758-205-3898', SHA('contraseña'), 01, 02, 01),
         ('1050652563', 'Aldrich',     'Vallance',       'avallance2@mac.com',              'http://www.fotografia.com', 20, '131-609-3048', SHA('contraseña'), 01, 08, 02),
         ('1060652554', 'Quent',       'Dei',            'winger4@theguardian.com',         'http://www.fotografia.com', 25, '726-528-6865', SHA('contraseña'), 01, 03, 02),
         ('1070652545',	'Willabella', 'Inger',          'qdei3@1688.com',                  'http://www.fotografia.com', 18, '217-774-2076', SHA('contraseña'), 01, 05, 02),
         ('1080652536',	'Laetitia',   'Rilton',         'lrilton5@scientificamerican.com', 'http://www.fotografia.com', 15, '383-332-8359', SHA('contraseña'), 01, 07, 02),
         ('1090652527',	'Thayne',     'Buckles',        'tbuckles6@dmoz.org',              'http://www.fotografia.com', 25, '819-270-7874', SHA('contraseña'), 01, 06, 02),
         ('1000652518',	'Gal',        'Dunwoody',       'gdunwoody7@liveinternet.ru',      'http://www.fotografia.com', 23, '143-798-3932', SHA('contraseña'), 01, 04, 03),
         ('1110652509',	'Grover',     'Meyer',          'gmeyer8@flickr.com',              'http://www.fotografia.com', 27, '663-778-7455', SHA('contraseña'), 01, 01, 03),
         ('1120652510',	'Sonny',      'MacNess',        'smacness9@photobucket.com',       'http://www.fotografia.com', 22, '427-621-0029', SHA('contraseña'), 01, 03, 03),
    -- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
         ('95011103101', 'Corena',   'Hindshaw',       'vocarmody0@statcounter.com',       'http://www.fotografia.com', 24, '648-717-4806', SHA('contraseña'), 02, 01, 03),
         ('94021103202', 'Othilia',  'Walls',          'gbleier1@ifeng.com',               'http://www.fotografia.com', 30, '378-269-9462', SHA('contraseña'), 02, 08, 03),
         ('93031103303', 'Eveline',  'McClenaghan',    'dperton2@tumblr.com',              'http://www.fotografia.com', 16, '778-426-4031', SHA('contraseña'), 02, 01, 03),
         ('92041103404', 'Olenolin', 'Tight',          'shicklingbottom3@freewebs.com',    'http://www.fotografia.com', 17, '494-779-2763', SHA('contraseña'), 02, 08, 03),
         ('91051103505', 'Fidole',   'Pettecrew',      'rreadshaw4@ustream.tv',            'http://www.fotografia.com', 18, '125-961-0480', SHA('contraseña'), 02, 01, 03),
         ('90061103606', 'Wye',      'Lowery',         'rdetoc5@cornell.edu',              'http://www.fotografia.com', 19, '193-157-2180', SHA('contraseña'), 02, 07, 03),
         ('91071103707', 'Karlyn',   'O''Garmen',      'wschumacher6@nbcnews.com',         'http://www.fotografia.com', 22, '579-367-8074', SHA('contraseña'), 02, 01, 03),
         ('92081103808', 'Gustie',   'Loftus',         'mmaccafferky7@com.com',            'http://www.fotografia.com', 24, '104-753-7547', SHA('contraseña'), 02, 05, 03),
         ('93091103909', 'Karine',   'Cassley',        'cmathison8@nba.com',               'http://www.fotografia.com', 26, '631-703-9827', SHA('contraseña'), 02, 01, 03),
         ('94001100001', 'Robinson', 'Uglow',          'lrighy9@geocities.jp',             'http://www.fotografia.com', 15, '827-143-8075', SHA('contraseña'), 02, 03, 03),
    -- ------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------- --
         ('CE1234567CO'  ,'Dylan',      'Ochterlony',   'rlubertoa@mail.ru',               'http://www.fotografia.com', 30, '767-391-2040', SHA('contraseña'), 03, 01, 03),
		 ('CA1234567CO'  ,'Halette',    'Scamerdine',   'rconnaughtonb@arizona.edu',       'http://www.fotografia.com', 23, '565-704-5440', SHA('contraseña'), 03, 02, 03),
         ('RU1234567CO'  ,'Adorne',     'McCrachen',    'gbezantc@technorati.com',         'http://www.fotografia.com', 22, '224-713-4702', SHA('contraseña'), 03, 01, 03),
         ('OS1234567CO'  ,'Jacqueline', 'Tumilson',     'amurfilld@vkontakte.ru',          'http://www.fotografia.com', 18, '590-133-7718', SHA('contraseña'), 03, 07, 03),
         ('EY1234567CO'  ,'Auberon',    'Rymour',       'cridinge@cbc.ca',                 'http://www.fotografia.com', 18, '857-692-6446', SHA('contraseña'), 03, 01, 03),
         ('MC1234567CO'  ,'Parrnell',   'Tyreman',      'amarkief@chron.com',              'http://www.fotografia.com', 18, '880-575-4847', SHA('contraseña'), 03, 03, 03),
         ('KA1234567CO'  ,'Guilbert',   'Haseley',      'njoshg@oakley.com',               'http://www.fotografia.com', 18, '645-203-0228', SHA('contraseña'), 03, 02, 02),
         ('NU1234567CO'  ,'Madalena',   'Conklin',      'rcantillonh@t.co',                'http://www.fotografia.com', 18, '717-876-0404', SHA('contraseña'), 03, 01, 02),
         ('TE1234567CO'  ,'Gard',       'Boughtflower', 'bharnimani@intel.com',            'http://www.fotografia.com', 18, '803-718-4814', SHA('contraseña'), 03, 06, 02),
         ('CN1234567CO'  ,'Nicoli',     'McCreagh',     'cdavidoviczj@comcast.net',        'http://www.fotografia.com', 18, '820-750-3843', SHA('contraseña'), 03, 04, 02);

   -- Inserción de datos pata la tabla <<opinion>> --





  
 
 






