CREATE SEQUENCE sco_funcion START WITH 0 INCREMENT BY 1;

INSERT INTO funciones(idFuncion,fecha,idSala,idPelicula,precio)
        VALUES(sco_funcion.nextval,'Date',1,1,5050);
INSERT INTO funciones(idFuncion,fecha,idSala,idPelicula,precio)
        VALUES(sco_funcion.nextval,'Date',1,4,12050);
INSERT INTO funciones(idFuncion,fecha,idSala,idPelicula,precio)
        VALUES(sco_funcion.nextval,'Date',2,4,8000);
INSERT INTO funciones(idFuncion,fecha,idSala,idPelicula,precio)
        VALUES(sco_funcion.nextval,'Date',4,'2',5000);
INSERT INTO funciones(idFuncion,fecha,idSala,idPelicula,precio)
        VALUES(sco_funcion.nextval,'Date',3,3,3350);