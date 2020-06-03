USE LogBook;

-- 8-Cantidad de usuarios inscritos (Número de usuarios)
SELECT COUNT(primer_nombre)
FROM usuario;

-- 9-Fichas y jornada (Ficha, Jornada)
SELECT DISTINCT numero_ficha, nombre_jornada
FROM ficha
INNER JOIN jornada ON ficha.fk_id_jornada = jornada.id_jornada;

-- 10-Fichas, trimestres, jornada (Ficha, Trimestres, Jornada)
SELECT DISTINCT nombre_jornada, num_trimestre, numero_ficha
FROM jornada
INNER JOIN ficha ON jornada.id_jornada = ficha.id_ficha
INNER JOIN trimestre ON ficha.fk_id_trimestre = trimestre.id_trimestre;

-- 11-Aprendices con tipo de documento 'T.I.' (Tipo de documento, Nombres, Apellidos)
SELECT DISTINCT nombre_tipo_documento AS Documento, primer_nombre AS Prim_Nombre, 
segundo_nombre AS Seg_Nombre, primer_apellido AS Prim_Apellido, segundo_apellido AS Seg_Apellido
FROM usuario
INNER JOIN tipo_documento ON usuario.fk_id_tipo_documento = tipo_documento.id_tipo_documento
INNER JOIN aprendiz ON tipo_documento.id_tipo_documento = aprendiz.fk_id_tipo_documento
WHERE nombre_tipo_documento LIKE "TARJETA DE IDENTIDAD";

-- 12-Fichas con jornada fines de semana (Ficha, Jornada) 
SELECT DISTINCT numero_ficha AS Ficha, nombre_jornada AS Jornada
FROM  ficha
INNER JOIN jornada ON ficha.id_ficha =jornada.id_jornada
WHERE nombre_jornada LIKE "FINES DE SEMANA";














