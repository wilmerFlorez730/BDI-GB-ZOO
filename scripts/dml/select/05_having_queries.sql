--Contar el número de animales por hábitat 
-- y mostrar solo aquellos hábitats que tienen 
-- más de 5 animales
SELECT H.NOMBRE AS HABITAT, 
       COUNT(A.ID) AS TOTAL_ANIMALES
FROM ANIMALES A
JOIN HABITAT H ON A.IDHABITAT = H.ID
GROUP BY H.NOMBRE
HAVING COUNT(A.ID) > 5;

-- Calcular el salario promedio por 
-- especialidad de cuidador y mostrar solo las 
-- especialidades con un salario promedio 
-- superior a $3,000,000
SELECT E.NOMBRE AS ESPECIALIDAD, 
       ROUND(AVG(C.SALARIO), 2) AS SALARIO_PROMEDIO
FROM CUIDADOR C
JOIN ESPECIALIDAD E ON C.IDESPECIALIDAD = E.ID
GROUP BY E.NOMBRE
HAVING AVG(C.SALARIO) > 3000000;

-- Calcular el promedio de edad de los animales 
-- en cada hábitat y mostrar solo los hábitats donde 
-- el promedio de edad supera los 5 años
SELECT 
       HA.NOMBRE AS HABITAT,
       ROUND(AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))),2) AS EDAD_PROMEDIO_ANIMALES
FROM ANIMALES A
INNER JOIN HABITAT HA ON A.IDHabitat = HA.ID
GROUP BY HA.NOMBRE
HAVING AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))) > 5;

-- Calcular el top 5 de los animales 
-- mas viejos del zoologico. 

SELECT
       A.NOMBRE AS ANIMAL,
       E.NOMBRE AS ESPECIE,
       A.FechaNac AS FECHA_NACIMIENTO,
       DATE_PART('year', AGE(A.FechaNac)) AS EDAD
FROM
       ANIMALES A
INNER JOIN ESPECIE E ON A.IdEspecie = E.ID
GROUP BY A.NOMBRE, E.NOMBRE, A.FechaNac
ORDER BY EDAD DESC
LIMIT 5;

-- Calcular el promedio de edad de los animales 
-- por especies y mostrar solo las especies donde
-- el promedio de edad supera los 6 años
-- ordenados alfabeticamente, por el nombre de especie.
SELECT ESP.NOMBRE AS ESPECIE,
       ROUND(AVG(DATE_PART('year',AGE(A.FechaNac)))) AS EDAD_PROMEDIO
FROM ANIMALES A
INNER JOIN ESPECIE ESP ON A.IdEspecie= ESP.ID
GROUP BY ESP.NOMBRE
HAVING AVG(DATE_PART('year',AGE(A.FechaNac))) > 6
ORDER BY ESP.NOMBRE;


-- 1. Calcular el promedio de edad de los animales en cada hábitat y mostrar solo los hábitats donde el promedio de edad supera los 5 años
-- Utilizando la función AVG() para calcular el promedio y HAVING para filtrar los resultados
SELECT H.NOMBRE AS HABITAT,
       ROUND(AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))), 2) AS PROMEDIO_EDAD_ANIMALES
FROM animals.ANIMALES A
JOIN animals.HABITAT H ON A.IDHabitat = H.ID
GROUP BY H.NOMBRE
HAVING AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))) > 5;

-- 2. Contar el número de visitas por cada hábitat y mostrar solo aquellos hábitats que han recibido más de 50 visitas en total
-- Utilizando la función COUNT() para contar las visitas y HAVING para filtrar los resultados
SELECT H.NOMBRE AS HABITAT, 
       COUNT(HV.ID) AS NUMERO_VISITAS
FROM animals.HABITAT_VISITANTES HV
JOIN animals.HABITAT H ON HV.IDHabitat = H.ID
GROUP BY H.NOMBRE
HAVING COUNT(HV.ID) > 50;

-- 3. Calcular el salario promedio de los cuidadores por año de contratación y mostrar solo los años donde el salario promedio es mayor a $3,200,000
-- Utilizando la función AVG() para calcular el promedio y HAVING para filtrar por salario
SELECT EXTRACT(YEAR FROM C.FechaContratacion) AS AÑO_CONTRATACION,
       ROUND(AVG(C.SALARIO), 2) AS SALARIO_PROMEDIO
FROM animals.CUIDADOR C
GROUP BY EXTRACT(YEAR FROM C.FechaContratacion)
HAVING AVG(C.SALARIO) > 3200000;

-- 4. Contar el número de especies bajo cada estado de conservación y mostrar solo aquellos estados con más de 10 especies
-- Utilizando la función COUNT() para contar las especies y HAVING para filtrar los estados
SELECT EC.NOMBRE AS ESTADO_CONSERVACION, 
       COUNT(E.ID) AS NUMERO_ESPECIES
FROM animals.ESPECIE E
JOIN animals.ESTADO_CONSERVACION EC ON E.IDEstadoConservacion = EC.ID
GROUP BY EC.NOMBRE
HAVING COUNT(E.ID) > 10;

-- 5. Calcular el promedio de antigüedad de los cuidadores por hábitat y mostrar solo los hábitats con un promedio de antigüedad de cuidadores superior a 3 años
-- Utilizando la función AVG() para calcular la antigüedad y HAVING para filtrar los resultados
SELECT H.NOMBRE AS HABITAT, 
       ROUND(AVG(EXTRACT(YEAR FROM AGE(C.FechaContratacion))), 2) AS PROMEDIO_ANTIGUEDAD_CUIDADORES
FROM animals.CUIDADOR C
JOIN animals.ANIMALES A ON C.ID = A.IDCuidador
JOIN animals.HABITAT H ON A.IDHabitat = H.ID
GROUP BY H.NOMBRE
HAVING AVG(EXTRACT(YEAR FROM AGE(C.FechaContratacion))) > 3;