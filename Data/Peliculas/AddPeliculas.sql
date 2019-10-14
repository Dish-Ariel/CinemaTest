CREATE SEQUENCE sco_pelicula START WITH 0 INCREMENT BY 1;

INSERT INTO peliculas(idPelicula,Nombre,Genero,Director,Duracion)
        VALUES(sco_pelicula.nextval,'Spiderman far from home','ficción','Marvel',3);
INSERT INTO peliculas(idPelicula,Nombre,Genero,Director,Duracion)
        VALUES(sco_pelicula.nextval,'Que pasó ayer','Comedia','Fox',2);
INSERT INTO peliculas(idPelicula,Nombre,Genero,Director,Duracion)
        VALUES(sco_pelicula.nextval,'Iron man 4 V:','ficción','Marvel',5);
INSERT INTO peliculas(idPelicula,Nombre,Genero,Director,Duracion)
        VALUES(sco_pelicula.nextval,'The Joker','ficción/drama','DC',2);
INSERT INTO peliculas(idPelicula,Nombre,Genero,Director,Duracion)
        VALUES(sco_pelicula.nextval,'Deadpool','acción','Marvel',3);