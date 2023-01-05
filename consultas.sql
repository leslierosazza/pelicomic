SELECT a.peli_nombre, a.peli_estreno, CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director, a.peli_restricciones FROM pelicula a INNER JOIN directores b ON a.peli_dire_id = b.dire_id 

ALTER TABLE pelicula ADD COLUMN peli_img TEXT

SELECT * FROM directores;

ALTER TABLE directores ADD COLUMN img TEXT
ALTER TABLE directores ADD COLUMN fec_nac DATE NOT NULL
ALTER TABLE directores ADD COLUMN nac VARCHAR(50)

SELECT dire_id, CONCAT(dire_nombres, ' ', dire_apellidos) AS director, img, nac, fec_nac FROM directores;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Jon_Watts_by_Gage_Skidmore.jpg', 
fec_nac = '1981-06-28', 
nac = 'Estadounidense' 
WHERE dire_id = 1;

UPDATE directores 
SET 
img = 'https://musicimage.xboxlive.com/catalog/video.contributor.33166500-0200-11db-89ca-0019b92a3933/image?locale=es-es&target=circle', 
fec_nac = '1965-06-21', 
nac = 'Estadounidense' 
WHERE dire_id = 2;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/f/fe/James_Cameron_by_Gage_Skidmore.jpg', 
fec_nac = '1954-08-16', 
nac = 'Canadiense' 
WHERE dire_id = 3;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/9/95/Christopher_Nolan_Cannes_2018.jpg', 
fec_nac = '1970-07-30', 
nac = 'Británico-Estadounidense' 
WHERE dire_id = 4;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/b/b2/John_McTiernan_Deauville_2014_3.jpg', 
fec_nac = '1951-01-08', 
nac = 'Estadounidense' 
WHERE dire_id = 5;

UPDATE directores 
SET 
img = 'https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/85/93/27/19813127.jpeg', 
fec_nac = '1928-07-26', 
nac = 'Estadounidense-Británico' 
WHERE dire_id = 6;

UPDATE directores 
SET 
img = 'https://es.web.img3.acsta.net/pictures/14/12/10/16/47/273365.jpg', 
fec_nac = '1937-11-30', 
nac = 'Británico' 
WHERE dire_id = 7;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Ron_Howard_2011_Shankbone_2.JPG/800px-Ron_Howard_2011_Shankbone_2.JPG', 
fec_nac = '1954-03-01', 
nac = 'Estadounidense' 
WHERE dire_id = 8;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/6/67/Steven_Spielberg_by_Gage_Skidmore.jpg', 
fec_nac = '1946-12-18', 
nac = 'Estadounidense' 
WHERE dire_id = 9;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Quentin_Tarantino_by_Gage_Skidmore.jpg/640px-Quentin_Tarantino_by_Gage_Skidmore.jpg', 
fec_nac = '1963-03-27', 
nac = 'Estadounidense' 
WHERE dire_id = 10;

UPDATE directores 
SET 
img = 'https://upload.wikimedia.org/wikipedia/commons/9/99/M._Night_Shyamalan_by_Gage_Skidmore.jpg', 
fec_nac = '1970-08-06', 
nac = 'Indio-Estadounidense' 
WHERE dire_id = 11;

INSERT INTO directores (dire_nombres, dire_apellidos, img, nac, fec_nac) VALUES 
('Stanley', 'Kubrick', 'https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/85/93/27/19813127.jpeg', 'Estadounidense-Británico', '1928-07-26'),
('Ridley', 'Scott', 'https://es.web.img3.acsta.net/pictures/14/12/10/16/47/273365.jpg', 'Británico', '1937-11-30'),
('Ron', 'Howard', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Ron_Howard_2011_Shankbone_2.JPG/800px-Ron_Howard_2011_Shankbone_2.JPG', 'Estadounidense', '1954-03-01'),
('Steven', 'Spilberg', 'https://upload.wikimedia.org/wikipedia/commons/6/67/Steven_Spielberg_by_Gage_Skidmore.jpg', 'Estadounidense', '1946-12-18'),
('Quentin', 'Tarantino', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Quentin_Tarantino_by_Gage_Skidmore.jpg/640px-Quentin_Tarantino_by_Gage_Skidmore.jpg', 'Indio-Estadounidense', '1963-03-27'),
('Night', 'Shamalan', 'https://upload.wikimedia.org/wikipedia/commons/9/99/M._Night_Shyamalan_by_Gage_Skidmore.jpg', 'Indio-Estadounidense', '1970-08-06')