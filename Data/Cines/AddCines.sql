CREATE SEQUENCE sco_cine START WITH 0 INCREMENT BY 1;

INSERT INTO cines(idCine,Nombre,Dirección,Telefono)
        VALUES(sco_cine.nextval,'Coyoacán','Av coyoacán #50 Del Coyoacán','55789058');
INSERT INTO cines(idCine,Nombre,Dirección,Telefono)
        VALUES(sco_cine.nextval,'Iztapalapa','Av periferico #50 Del Iztapalapa','55585577');
INSERT INTO cines(idCine,Nombre,Dirección,Telefono)
        VALUES(sco_cine.nextval,'Iztapalapa','Av Ermita #355 Del Iztapalapa','5522945878');
INSERT INTO cines(idCine,Nombre,Dirección,Telefono)
        VALUES(sco_cine.nextval,'Centro','Av Moneda #1500 Del Bicentenario','5578989950');
INSERT INTO cines(idCine,Nombre,Dirección,Telefono)
        VALUES(sco_cine.nextval,'Roma','Av Venados #5 Del Benito Juarez','5591505570');