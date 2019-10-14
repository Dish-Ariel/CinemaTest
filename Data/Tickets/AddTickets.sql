CREATE SEQUENCE sco_ticket START WITH 0 INCREMENT BY 1;

INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,15000,1,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,50000,2,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
       	VALUES(sco_ticket.nextval,100000,3,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,3500,4,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,8050,5,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,9050,6,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
        VALUES(sco_ticket.nextval,25000,7,"Date");
INSERT INTO ticket(idTicket,precioFinal,idListaBoletos,fecha)
       	VALUES(sco_ticket.nextval,8800,8,"Date");