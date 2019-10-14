CREATE SEQUENCE sco_boleto START WITH 0 INCREMENT BY 1;

INSERT INTO boletos(idBoleto,idListaBoletos,idFuncion)
        VALUES(sco_boleto.nextval,1,4);
INSERT INTO boletos(idBoleto,idListaBoletos,idFuncion)
        VALUES(sco_boleto.nextval,1,4);
INSERT INTO boletos(idBoleto,idListaBoletos,idFuncion)
       	VALUES(sco_boleto.nextval,1,4);