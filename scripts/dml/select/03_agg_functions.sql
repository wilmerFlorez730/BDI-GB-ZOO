-- COUNT()
-- Contar el número de animales en cada hábitat.
SELECT H.NOMBRE AS HABITAT, 
       COUNT(A.ID) AS NUMERO_ANIMALES
FROM ANIMALES A
JOIN HABITAT H ON A.IDHABITAT = H.ID
GROUP BY H.NOMBRE;

-- SUM()
-- Calcular el salario total de los cuidadores 
-- contratados en el año 2022
SELECT SUM(SALARIO) AS SALARIO_TOTAL_2022
FROM CUIDADOR
WHERE EXTRACT(YEAR FROM FECHACONTRATACION) = 2022;

-- AVG()
-- Calcular la antigüedad promedio (en años) de los cuidadores.
SELECT AVG(EXTRACT(YEAR FROM AGE(C.FECHACONTRATACION))) AS ANTIGUEDAD,
       C.NOMBRE AS CUIDADOR
FROM CUIDADOR C
GROUP BY C.FECHACONTRATACION, C.NOMBRE;

-- MIN() && MAX()
-- Obtener el salario minimo y el salario maximo, 
-- para los cuidadores contratados en el 2023

SELECT MIN(C.SALARIO) SALARIO_MENOR_2023,
       MAX(C.SALARIO) SALARIO_MAYOR_2023
FROM CUIDADOR C
WHERE EXTRACT(YEAR FROM FECHACONTRATACION) = 2023;


-- 1. Calcular el salario total de todos los cuidadores en el zoológico
-- Utilizando la función SUM() para obtener el total de todos los salarios de los cuidadores
SELECT SUM(SALARIO) AS SALARIO_TOTAL
FROM animals.CUIDADOR;

-- 2. Obtener el salario promedio de los cuidadores agrupados por especialidad
-- Utilizando la función AVG() para calcular el promedio y GROUP BY para agrupar por especialidad
SELECT E.NOMBRE AS ESPECIALIDAD, 
       ROUND(AVG(C.SALARIO), 2) AS SALARIO_PROMEDIO
FROM animals.CUIDADOR C
JOIN animals.ESPECIALIDAD E ON C.IDEspecialidad = E.ID
GROUP BY E.NOMBRE;

-- 3. Contar el número total de animales en cada hábitat
-- Utilizando la función COUNT() para contar los animales y GROUP BY para agrupar por hábitat
SELECT H.NOMBRE AS HABITAT, 
       COUNT(A.ID) AS TOTAL_ANIMALES
FROM animals.ANIMALES A
JOIN animals.HABITAT H ON A.IDHabitat = H.ID
GROUP BY H.NOMBRE;

-- 4. Mostrar la fecha de contratación más antigua y la más reciente de los cuidadores
-- Utilizando las funciones MIN() y MAX() para obtener las fechas de contratación
SELECT MIN(FechaContratacion) AS FECHA_CONTRATACION_MAS_ANTIGUA,
       MAX(FechaContratacion) AS FECHA_CONTRATACION_MAS_RECIENTE
FROM animals.CUIDADOR;


-- 5. Listar hábitats con promedio de edad de animales superior a 5 años.

SELECT H.NOMBRE AS HABITAT, 
       ROUND(AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))), 2) AS PROMEDIO_EDAD_ANIMALES
FROM animals.ANIMALES A
JOIN animals.HABITAT H ON A.IDHabitat = H.ID
GROUP BY H.NOMBRE
HAVING AVG(EXTRACT(YEAR FROM AGE(A.FechaNac))) > 5;

