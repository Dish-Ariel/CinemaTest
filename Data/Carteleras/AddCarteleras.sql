CREATE SEQUENCE sco_cartelera START WITH 0 INCREMENT BY 1;

INSERT INTO carteleras(idCartelera,idPelicula)
        VALUES(sco_cartelera.nextval,1);
INSERT INTO carteleras(idCartelera,idPelicula)
        VALUES(sco_cartelera.nextval,2);
INSERT INTO carteleras(idCartelera,idPelicula)
       	VALUES(sco_cartelera.nextval,4);