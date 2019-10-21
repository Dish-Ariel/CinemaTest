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
    Fecha DATE,
    idSala INTEGER,
    idPelicula INTEGER,
    Precio BIGINT,
    CONSTRAINT funciones_pk PRIMARY KEY(idFuncion)
);

CREATE TABLE salas
(
    idSala INTEGER NOT NULL,
    idCine INTEGER,
    Nombre INTEGER,
    CONSTRAINT salas_pk PRIMARY KEY(idSala)
);

CREATE TABLE tickets
(
    idTicket INTEGER NOT NULL,
    Fecha DATE,
    idListaBoletos INTEGER,
    idEmpleado INTEGER,
    idCiente INTEGER,
    precioFinal BIGINT,
    idListaProductos INTEGER,
    idTaquilla INTEGER,
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

CREATE TABLE taquillas
(
    idTaquilla INTEGER NOT NULL,
    idCine INTEGER,
    Descripcion VARCHAR(50),
    CONSTRAINT taquillas_pk PRIMARY KEY(idTaquilla)
);

CREATE TABLE clientes
(
    idCliente INTEGER NOT NULL,
    Nombre VARCHAR(150),
    Dirección VARCHAR(250),
    Telefono VARCHAR(64),
    CONSTRAINT clientes_pk PRIMARY KEY(idCliente)
);

CREATE TABLE empleados
(
    Direccion VARCHAR(250),
    Extension VARCHAR(64),
    Nombre VARCHAR(150),
    Apellido VARCHAR(150),
    Area VARCHAR(250),
    idCine INTEGER,
    idEmpleado INTEGER NOT NULL,
    CONSTRAINT empleados_pk PRIMARY KEY(idEmpleado)
);

CREATE TABLE productos
(
    idSala INTEGER NOT NULL,
    idEstablecimiento INTEGER,
    Nombre INTEGER,
    CONSTRAINT productos_pk PRIMARY KEY(idSala)
);

CREATE TABLE listaProductos
(
    idListaProductos INTEGER NOT NULL,
    CONSTRAINT listaproductos_pk PRIMARY KEY(idListaProductos)
);

CREATE TABLE productos
(
    idProducto INTEGER NOT NULL,
    idListaBoletos INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    CONSTRAINT productos_pk PRIMARY KEY(idProducto)
);

CREATE TABLE Establecimientos
(
    Nombre INTEGER,
    idCine INTEGER NOT NULL,
    idEstablecimiento INTEGER,
    Tipo VARCHAR(25),
    Descripcion INTEGER,
    CONSTRAINT establecimientos_pk PRIMARY KEY(idCine)
);


-- Create FKs
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
    
ALTER TABLE salas
    ADD    FOREIGN KEY (idCine)
    REFERENCES cines(idCine)
;
    
ALTER TABLE funciones
    ADD    FOREIGN KEY (idSala)
    REFERENCES salas(idSala)
;
    
ALTER TABLE funciones
    ADD    FOREIGN KEY (idPelicula)
    REFERENCES peliculas(idPelicula)
;
    
ALTER TABLE carteleras
    ADD    FOREIGN KEY (idPelicula)
    REFERENCES peliculas(idPelicula)
;
    
ALTER TABLE taquillas
    ADD    FOREIGN KEY (idCine)
    REFERENCES cines(idCine)
;
    
ALTER TABLE tickets
    ADD    FOREIGN KEY (idTaquilla)
    REFERENCES taquillas(idTaquilla)
;
    
ALTER TABLE empleados
    ADD    FOREIGN KEY (idCine)
    REFERENCES cines(idCine)
;
    
ALTER TABLE tickets
    ADD    FOREIGN KEY (idEmpleado)
    REFERENCES empleados(idEmpleado)
;
    
ALTER TABLE tickets
    ADD    FOREIGN KEY (idCiente)
    REFERENCES clientes(idCliente)
;
    
ALTER TABLE productos
    ADD    FOREIGN KEY (idListaBoletos)
    REFERENCES listaProductos(idListaProductos)
;
    
ALTER TABLE tickets
    ADD    FOREIGN KEY (idListaProductos)
    REFERENCES listaProductos(idListaProductos)
;
    
ALTER TABLE productos
    ADD    FOREIGN KEY (idProducto)
    REFERENCES productos(idSala)
;
    
ALTER TABLE Establecimientos
    ADD    FOREIGN KEY (idCine)
    REFERENCES cines(idCine)
;
    
ALTER TABLE productos
    ADD    FOREIGN KEY (idEstablecimiento)
    REFERENCES Establecimientos(idEstablecimiento)
;
    

-- Create Indexes

