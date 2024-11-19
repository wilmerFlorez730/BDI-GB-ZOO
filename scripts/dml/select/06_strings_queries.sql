-- Mostrar el nombre cientifico de las familias
-- en mayuscula sostenida, y el nombre comun.

SELECT UPPER(nombreCientifico) AS NOMBRE_CIENTIFICO,
       nombreComun AS NOMBRE_COMUN
FROM FAMILIA;

-- Mostrar los codigos del estado de conservacion 
-- en minuscula.

SELECT 
    LOWER(Codigo) AS CODIGO_ESTADO,
    Nombre AS ESTADO_CONSERVACION
FROM ESTADO_CONSERVACION;

-- Mostrar el nombre de los 5 primeros animales ordenados 
-- alfabeticamente, junto con la frase lo cuida, 
-- y el nombre de su cuidador.

SELECT A.NOMBRE AS ANIMAL,
       CONCAT(A.nombre, ' lo cuida ', CU.nombre) AS FRASE
FROM ANIMALES A
INNER JOIN CUIDADOR CU ON A.IDCuidador = CU.ID
ORDER BY A.NOMBRE
LIMIT 5;

-- Mostrar el nombre del animal, con la longitud mas larga. 
-- Si la longitud se repite muchas veces, escoger 
-- el primero que arroje la consulta.

SELECT NOMBRE AS ANIMAL,
       LENGTH(NOMBRE) AS LONGITUD_NOMBRE
FROM ANIMALES
WHERE LENGTH(NOMBRE) = (SELECT MAX(LENGTH(NOMBRE)) FROM ANIMALES)
LIMIT 1;

-- Extraer la inicial del primer nombre concatenado 
-- con un punto y el apellido del cuidador.
SELECT 
    CONCAT(SUBSTRING(nombre FROM 1 FOR 1), '. ', SPLIT_PART(nombre, ' ', 2)) AS nombre_formato
FROM CUIDADOR;

SELECT NOMBRE AS NOMBRE_COMPLETO,
       CONCAT(SUBSTRING(NOMBRE, 1, 1)
       , '. ',SPLIT_PART(nombre, ' ', 2)) AS NOMBRE_FORMATEADO
FROM CUIDADOR;



-- Listar cuidadores con su antigüedad en años.

SELECT C.NOMBRE AS CUIDADOR, 
       EXTRACT(YEAR FROM AGE(C.FechaContratacion)) AS ANTIGUEDAD_EN_AÑOS
FROM animals.CUIDADOR C;



-- Listar hábitats visitados en el último mes y fecha de última visita.

SELECT H.NOMBRE AS HABITAT, 
       MAX(HV.FechaVisita) AS FECHA_ULTIMA_VISITA
FROM animals.HABITAT_VISITANTES HV
JOIN animals.HABITAT H ON HV.IDHabitat = H.ID
WHERE HV.FechaVisita >= (CURRENT_DATE - INTERVAL '1 month')
GROUP BY H.NOMBRE;



-- Mostrar nombre completo de visitantes en mayúsculas.

SELECT UPPER(V.NOMBRE) AS NOMBRE_COMPLETO
FROM animals.VISITANTES V;



-- Mostrar inicial del nombre y apellido de los cuidadores.

SELECT CONCAT(SUBSTRING(C.Nombre FROM 1 FOR 1), '. ', SPLIT_PART(C.Nombre, ' ', 2)) AS NOMBRE_FORMATADO
FROM animals.CUIDADOR C;
