-- Create schemas

-- Create tables
CREATE TABLE cines
(
    idCine INTEGER NOT NULL,
    Nombre VARCHAR(150),
    Dirección VARCHAR(250),
    Telefono VARCHAR(64),
    CONSTRAINT cines_pk PRIMARY KEY(idCine)
);

CREATE TABLE peliculas
(
    idPelicula INTEGER NOT NULL,
    Nombre VARCHAR(100),
    Genero VARCHAR(50),
    Director VARCHAR(50),
    Duracion INTEGER,
    CONSTRAINT peliculas_pk PRIMARY KEY(idPelicula)
);

CREATE TABLE funciones
(
    idFuncion INTEGER NOT NULL,
    fecha DATE,
    idSala INTEGER,
    idPelicula INTEGER,
    precio BIGINT,
    CONSTRAINT funciones_pk PRIMARY KEY(idFuncion)
);

CREATE TABLE salas
(
    idSala VARCHAR(0) NOT NULL,
    idCine INTEGER,
    Nombre INTEGER,
    CONSTRAINT salas_pk PRIMARY KEY(idSala)
);

CREATE TABLE tickets
(
    idTicket INTEGER NOT NULL,
    precioFinal BIGINT,
    idListaBoletos INTEGER,
    fecha DATE,
    CONSTRAINT tickets_pk PRIMARY KEY(idTicket)
);

CREATE TABLE carteleras
(
    idCartelera INTEGER NOT NULL,
    idPelicula INTEGER,
    CONSTRAINT carteleras_pk PRIMARY KEY(idCartelera)
);

CREATE TABLE listaBoletos
(
    idListaBoletos INTEGER NOT NULL,
    CONSTRAINT listaboletos_pk PRIMARY KEY(idListaBoletos)
);

CREATE TABLE boletos
(
    idBoleto INTEGER NOT NULL,
    idListaBoletos INTEGER NOT NULL,
    idFuncion INTEGER NOT NULL,
    CONSTRAINT boletos_pk PRIMARY KEY(idBoleto)
);


-- Create FKs
ALTER TABLE cines
    ADD    FOREIGN KEY (idCine)
    REFERENCES salas(idCine)
;
    
ALTER TABLE peliculas
    ADD    FOREIGN KEY (idPelicula)
    REFERENCES funciones(idPelicula)
;
    
ALTER TABLE salas
    ADD    FOREIGN KEY (idSala)
    REFERENCES funciones(idSala)
;
    
ALTER TABLE carteleras
    ADD    FOREIGN KEY (idPelicula)
    REFERENCES peliculas(idPelicula)
;
    
ALTER TABLE boletos
    ADD    FOREIGN KEY (idListaBoletos)
    REFERENCES listaBoletos(idListaBoletos)
;
    
ALTER TABLE boletos
    ADD    FOREIGN KEY (idFuncion)
    REFERENCES funciones(idFuncion)
;
    
ALTER TABLE tickets
    ADD    FOREIGN KEY (idListaBoletos)
    REFERENCES listaBoletos(idListaBoletos)
;
    

-- Create Indexes
