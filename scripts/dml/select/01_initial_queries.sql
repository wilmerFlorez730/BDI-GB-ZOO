--1. Mostrar todos los animales que viven en el habitat Santuario de aves tropical 
SELECT * FROM habitat WHERE nombre LIKE '%aves tropical%';
--2. Mostrar el nombre del cuidador, con el alias cuidador, ordernados afabetticamente
SELECT nombre AS cuidador FROM cuidador ORDER BY nombre ASC;
--3. Mostrar el nombre y el ID de la especie, de los animales que viven en reserva de fauna 
SELECT E.NOMBRE AS NOMBRE_ESPECIE,
       E.ID AS ID_ESPECIE
FROM ANIMALES A
JOIN HABITAT H ON A.IDHABITAT = H.ID
JOIN ESPECIE E ON A.IDESPECIE = E.ID
WHERE H.NOMBRE = 'Reserva de fauna';
