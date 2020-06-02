use LogBook;
select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_vinculacion
from usuario 
inner join instructor on usuario.numero_documento = instructor.fk_numero_documento
inner join vinculacion on instructor.fk_id_vinculacion = vinculacion.id_vinculacion
order by 1Nombre ASC;

select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_especialidad as especialidad
from usuario 
inner join instructor on usuario.numero_documento = instructor.fk_numero_documento
inner join especialidad on instructor.fk_id_especialidad = especialidad.id_especialidad
order by 1Nombre ASC;

select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, numero_ficha as ficha, nombre_grupo as grupo
from usuario 
inner join aprendiz on usuario.numero_documento = aprendiz.fk_numero_documento
inner join aprendiz_ficha on aprendiz.fk_numero_documento = aprendiz_ficha.fk_numero_documento
inner join ficha on aprendiz_ficha.fk_id_ficha = ficha.id_ficha
inner join grupo on ficha.fk_id_grupo = grupo.id_grupo
order by 1Nombre ASC;

select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, nombre_rol as Rol
from usuario
inner join rol on usuario.fk_id_rol = rol.id_rol
order by 1Nombre;

select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, 
numero_documento as Documento, nombre_tipo_documento as tipoDocumento, nombre_rol as rol
from usuario
inner join rol on usuario.fk_id_rol = rol.id_rol
inner join tipo_documento on usuario.fk_id_tipo_documento = tipo_documento.id_tipo_documento
order by 1Nombre;

select numero_ficha as Ficha, descripcion_competencia as Competencia, descripcion_resultado_aprendizaje as Resultado
from ficha
inner join competencia on ficha.fk_id_competencia = competencia.id_competencia
inner join resultado_aprendizaje on competencia.id_competencia = resultado_aprendizaje.fk_id_competencia
order by Competencia ASC;

select primer_nombre as 1Nombre, segundo_nombre as 2Nombre, primer_apellido as 1Apellido, segundo_apellido as 2apellido, numero_ficha as ficha, nombre_grupo as grupo
from usuario 
inner join aprendiz on usuario.numero_documento = aprendiz.fk_numero_documento
inner join aprendiz_ficha on aprendiz.fk_numero_documento = aprendiz_ficha.fk_numero_documento
inner join ficha on aprendiz_ficha.fk_id_ficha = ficha.id_ficha
inner join grupo on ficha.fk_id_grupo = grupo.id_grupo
where numero_ficha = '1963872'
order by 1Nombre ASC;













