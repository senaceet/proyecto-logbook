use LogBook;

-- 1-Instructores y su tipo de vinculación (Nombres, Apellidos, Tipo de vinculación)
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_vinculacion
from usuario 
inner join instructor on usuario.numero_documento = instructor.fk_numero_documento
inner join vinculacion on instructor.fk_id_vinculacion = vinculacion.id_vinculacion
order by 1Nombre ASC;

-- 2-Instructores y su especialidad (Nombres, Apellidos, Tipo de especialidad)
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_especialidad as especialidad
from usuario 
inner join instructor on usuario.numero_documento = instructor.fk_numero_documento
inner join especialidad on instructor.fk_id_especialidad = especialidad.id_especialidad
order by 1Nombre ASC;

-- 3-Fichas y aprendices asociados (Ficha, Grupo, Nombres, Apellidos)
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, numero_ficha as ficha, nombre_grupo as grupo
from usuario 
inner join aprendiz on usuario.numero_documento = aprendiz.fk_numero_documento
inner join aprendiz_ficha on aprendiz.fk_numero_documento = aprendiz_ficha.fk_numero_documento
inner join ficha on aprendiz_ficha.fk_id_ficha = ficha.id_ficha
inner join grupo on ficha.fk_id_grupo = grupo.id_grupo
order by 1Nombre ASC;

-- 4-Usuarios y rol (Nombres, Apellidos, Rol) 
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_rol as Rol
from usuario
inner join rol on usuario.fk_id_rol = rol.id_rol
order by 1Nombre;

-- 5-Tipo de documento, usuarios y rol (Tipo de documento, Número de identificación, Nombres, Apellidos, Rol)
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, 
numero_documento as Documento, nombre_tipo_documento as tipoDocumento, nombre_rol as rol
from usuario
inner join rol on usuario.fk_id_rol = rol.id_rol
inner join tipo_documento on usuario.fk_id_tipo_documento = tipo_documento.id_tipo_documento
order by 1Nombre;

-- 6-Fichas, competencias, resultados de aprendizaje (Ficha, Competencias, Resultados de aprendizaje)
select distinct numero_ficha as Ficha, descripcion_competencia as Competencia, descripcion_resultado_aprendizaje as Resultado
from ficha
inner join competencia on competencia.id_competencia  = ficha.fk_id_competencia
inner join resultado_aprendizaje on competencia.id_competencia = resultado_aprendizaje.fk_id_competencia
order by Ficha ASC;

-- 7-Elegir una ficha en específico y los aprendices asociados a esa ficha (Ficha, Grupo, Nombres, Apellidos)
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, numero_ficha as ficha, nombre_grupo as grupo
from usuario 
inner join aprendiz on usuario.numero_documento = aprendiz.fk_numero_documento
inner join aprendiz_ficha on aprendiz.fk_numero_documento = aprendiz_ficha.fk_numero_documento
inner join ficha on aprendiz_ficha.fk_id_ficha = ficha.id_ficha
inner join grupo on ficha.fk_id_grupo = grupo.id_grupo
where numero_ficha = '1963872'
order by 1Nombre ASC;

-- 8-Cantidad de usuarios inscritos (Número de usuarios)
SELECT COUNT(primer_nombre) as PrimerNombre
FROM usuario;

-- 9-Fichas y jornada (Ficha, Jornada)
SELECT DISTINCT numero_ficha as Ficha, nombre_jornada as Jornada
FROM ficha
INNER JOIN jornada ON ficha.fk_id_jornada = jornada.id_jornada
order by Ficha ASC;

-- 10-Fichas, trimestres, jornada (Ficha, Trimestres, Jornada)
SELECT DISTINCT nombre_jornada as Jornada, num_trimestre as Trimestre, numero_ficha as Ficha
FROM jornada
INNER JOIN ficha ON jornada.id_jornada = ficha.id_ficha
INNER JOIN trimestre ON ficha.fk_id_trimestre = trimestre.id_trimestre
order by Ficha;

-- 11-Aprendices con tipo de documento 'T.I.' (Tipo de documento, Nombres, Apellidos)
SELECT DISTINCT nombre_tipo_documento AS Documento, primer_nombre AS 1Nombre, 
segundo_nombre AS 2Nombre, primer_apellido AS 1Apellido, segundo_apellido AS 2Apellido
FROM usuario
INNER JOIN tipo_documento ON usuario.fk_id_tipo_documento = tipo_documento.id_tipo_documento
INNER JOIN aprendiz ON tipo_documento.id_tipo_documento = aprendiz.fk_id_tipo_documento
WHERE nombre_tipo_documento LIKE "TARJETA DE IDENTIDAD"
order by 1Nombre;

-- 12-Fichas con jornada fines de semana (Ficha, Jornada) 
SELECT DISTINCT numero_ficha AS Ficha, nombre_jornada AS Jornada
FROM  ficha
INNER JOIN jornada ON ficha.id_ficha =jornada.id_jornada
WHERE nombre_jornada LIKE "FINES DE SEMANA"
order by Ficha;


