SET client_encoding = 'UTF8';

INSERT INTO animals.ANIMALES (Nombre, FechaNac, IDCuidador, IDHabitat, IDEspecie) VALUES

-- Reptiles
('Nagini', '2020-03-18', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'María López'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Cocodrilo Marino')),
('Saphira', '2020-05-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'María López'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Cocodrilo del Nilo')),
('Mushu', '2019-07-30', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Patricia Navarro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Gavial')),
('Kaa', '2018-04-21', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Patricia Navarro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Caimán de Anteojos')),
('Scales', '2017-09-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Patricia Navarro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Aligátor Americano')),
('Spike', '2018-06-30', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'María López'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Crocodylus niloticus')),
('Rango', '2019-03-01', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'María López'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Cocodrilo del Nilo')),
('Slither', '2016-11-23', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Patricia Navarro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Gavial')),
('Snap', '2020-02-14', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'María López'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Caimán de Anteojos')),
('Toothy', '2021-05-06', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Patricia Navarro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Cañón seco'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Crocodylus porosus')),

-- Mamíferos marinos
('Flipper', '2015-08-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Ana Rivas'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reef coralino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Delfín')),
('Splash', '2016-12-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Daniela Méndez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Manglares costeros'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Tortuga Gigante de Galápagos')),
('Blue', '2017-11-22', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Ana Rivas'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reef coralino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Delfín')),
('Waves', '2018-05-30', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Daniela Méndez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Manglares costeros'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Ballena')),
('Pearl', '2019-09-19', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Ana Rivas'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reef coralino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Foca')),
('Oceana', '2017-03-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Ana Rivas'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Manglares costeros'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Foca')),
('Finn', '2018-08-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Daniela Méndez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reef coralino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Delfín')),
('Bubble', '2016-04-09', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Daniela Méndez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Manglares costeros'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Orca')),
('Shelly', '2019-06-13', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Ana Rivas'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reef coralino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Foca')),
('Coral', '2021-02-28', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Daniela Méndez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Manglares costeros'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Tortuga Gigante de Galápagos')),

-- Aves
('Polly', '2021-04-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Carlos Gómez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Santuario de aves tropicales'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Loro Gris Africano')),
('Sky', '2019-06-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Francisco Herrera'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Kea')),
('Feather', '2018-08-08', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Carlos Gómez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Santuario de aves tropicales'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Loro Amazónico')),
('Pico', '2020-10-20', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Francisco Herrera'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Loro Gris Africano')),
('Echo', '2017-12-30', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Carlos Gómez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Santuario de aves tropicales'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Guacamayo Rojo')),
('Wings', '2019-05-21', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Carlos Gómez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Kea')),
('Chirp', '2020-08-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Francisco Herrera'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Loro Gris Africano')),
('Beaky', '2018-09-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Carlos Gómez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Santuario de aves tropicales'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Guacamayo Rojo')),
('Whistle', '2021-01-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Francisco Herrera'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Loro Gris Africano')),
('Plume', '2016-07-18', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Francisco Herrera'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Páramo de aves rapaces'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Guacamayo Rojo')),

-- Primates
('Koko', '2014-10-27', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Chimpancé')),
('George', '2015-02-03', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'José García'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Gorila de Montaña')),
('Caesar', '2016-02-28', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Bonobo')),
('Jumbo', '2017-09-23', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'José García'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mandril')),
('Bobo', '2018-04-20', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Babuino')),
('Momo', '2019-11-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mandril')),
('Zuri', '2016-07-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Gorila de Montaña')),
('Mufasa', '2020-03-30', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'José García'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Orangután de Borneo')),
('Lila', '2021-05-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'José García'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mandril')),
('Rafiki', '2018-09-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Pedro Sánchez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Reserva de fauna'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Chimpancé')),

-- Insectos
('Ziggy', '2023-04-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mariposa Monarca')),
('Buzz', '2023-05-18', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Escarabajo Rinoceronte')),
('Flutter', '2021-09-23', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mariposa Monarca')),
('Anty', '2020-04-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Hormiga Gigante')),
('Cricket', '2019-02-28', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Grillo')),
('Beetle', '2018-06-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Escarabajo')),
('Bumble', '2019-05-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Abejorro')),
('Butter', '2021-08-21', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Mariposa Azul')),
('Glow', '2017-10-09', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Luciérnaga')),
('Sting', '2020-01-20', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Avispa')),
('Flick', '2019-11-01', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Elena Martínez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Insectario tropical'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Hormiga Gigante')),

-- Otros mamíferos
('Kodiak', '2018-01-17', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),
('Baloo', '2017-03-17', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),
('Winnie', '2018-08-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Negro Americano')),
('Panda', '2016-11-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Panda Gigante')),
('Grizzly', '2015-05-28', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),
('Kodiak', '2019-10-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),
('Teddy', '2020-03-05', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Negro Americano')),
('Ranger', '2017-09-01', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Panda Gigante')),
('Yogi', '2018-04-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),
('Bruno', '2019-12-18', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Negro Americano')),
('Grizz', '2021-07-07', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Bosque de coníferas'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Pardo')),

-- Animales nocturnos
('Twilight', '2021-09-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Murciélago Vampiro')),
('Luna', '2019-12-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Lince Boreal')),
('Shadow', '2020-10-31', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Murciélago Vampiro')),
('Owliver', '2018-06-14', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Lechuza')),
('Midnight', '2017-08-18', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Lince Boreal')),
('Starlight', '2020-01-10', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Zorro Volador')),
('Twilight', '2019-09-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Murciélago Vampiro')),
('Echo', '2021-05-27', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Lechuza')),
('Noctis', '2019-03-13', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Lince Boreal')),
('Nebula', '2020-07-19', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Zorro Volador')),
('Shade', '2018-11-04', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Lucía Ortega'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Refugio crepuscular'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Murciélago Vampiro')),

-- Elefantes
('Manny', '2019-06-02', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),
('Dumbo', '2018-08-08', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Sofía Morales'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Asiático')),
('Manny', '2019-06-02', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),
('Babar', '2017-09-09', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),
('Ella', '2018-12-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Sofía Morales'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Asiático')),
('Hathi', '2016-11-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),
('Jumbo', '2021-03-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Sofía Morales'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Asiático')),
('Tusker', '2019-04-14', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),
('Trunky', '2020-02-22', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Asiático')),
('Ellaine', '2017-01-19', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Sofía Morales'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante de Selva Africano')),
('Tantor', '2016-05-05', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Roberto Castro'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Llanura de mamíferos'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Elefante Africano')),

-- Felinos
('Simba', '2018-06-12', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'León')),
('Nala', '2018-07-21', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'León')),
('Raja', '2019-04-22', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Luis Fernández'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Tigre')),
('Shere Khan', '2017-12-25', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Luis Fernández'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Tigre')),
('Bagheera', '2017-11-05', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Pantera')),
('Leo', '2020-01-15', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'León')),
('Cleo', '2019-03-29', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Leopardo')),
('Khan', '2016-11-11', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Luis Fernández'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Tigre')),
('Pardo', '2018-10-20', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Juan Pérez'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Guepardo')),
('Panther', '2017-08-03', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Luis Fernández'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Territorio felino'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Jaguar'));


INSERT INTO animals.ANIMALES (Nombre, FechaNac, IDCuidador, IDHabitat, IDEspecie) VALUES
('Clareth', '2004-10-07', (SELECT ID FROM animals.CUIDADOR WHERE Nombre = 'Laura Torres'), (SELECT ID FROM animals.HABITAT WHERE Nombre = 'Tundra ártica'), (SELECT ID FROM animals.ESPECIE WHERE Nombre = 'Oso Polar'));