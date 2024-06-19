
SELECT concat(ifnull(apellido,'sin apellido'),' ',nombre) as nombreapellido, sueldo
FROM new_schem.empleado
;

select distinct *
FROM new_schem.empleado
where sueldo is null
;

/*
el motor lo que hace es primero ver la sintaxis y luego ver que tenga permisos para ver las columnas y datos que se quieren ver.
Luego empieza a armar un plan de ejecucion,
si hay un 'where', se fija si hay una condicion que cumpla va a la tabla que coincide y la ejecuta (porque es clave primaria)
si busco 'activo' por ejemplo, al no ser una clave primaria, tiene que recorrer toda la tabla hasta lo ultimo y va filtrando los que tienen o no el activo en 1.
Y a lo ultimo recien se fija en el select QUE columnas va a mostrar segun las condiciones solicitadas.
*/

/*
tambien puedo pedirle la concatenacion con 'concat' (propia de MySQL) entre dos valores de columnas. 
SELECT concat(apellido,' ',nombre), sueldo

Pero devuelve un nombre de funcion por lo que es conveniente ponerle un alias con un 'as'
SELECT concat(apellido,' ',nombre) as nombreapellido, sueldo 

como el 'where' siempre se ejecuta primero, nunca puedo poner un alias, siempre nombre de columnas. Sino no lo reconoce.
Para que se pueda poner en el 'where' se pueden usar 'and', 'or' y operadores logicos
where apellido='wilson' and nombre='julieta'

Tambien se puede usar la funcion 'like' para indicar alguno similar y agregandole el porcentaje '%' para indicar con cual letra empieza. Sino con guion bajo '_' para salear un caracter.
where apellido like 'p_r%'

*/

/*
todos los parametros que tienen nulos y queremos concatenar es mejor poner un ifnull igualado a un espacio en blanco con las dos comillas ' ' (o escribirle 'sin apellido').
SELECT concat(ifnull(apellido,'sin apellido'),' ',nombre) as nombreapellido, sueldo

*/

/*
con la funcion 'distinct' luego del 'select' sirve para ver los valores que no se repiten.
select distinct *departamento
*/

/*
si quiero ver algun parametro siendo 'null' dentro del 'where' no se iguala sino que se usa la palabra reservada 'is'. LO PEOR DE TODO QUE NO DA EL ERROR!
where sueldo is null
*/

select *
from empleado;

