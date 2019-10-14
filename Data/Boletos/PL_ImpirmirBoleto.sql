CREATE OR REPLACE PROCEDURE imprimir_boleto(P_idBoleto boletos.idBoleto%TYPE)AS
    V_fecha funciones.Fecha%TYPE,
    V_precio funciones.Precio%TYPE,
    V_pelicula peliculas.Nombre%TYPE,
    V_duracion peliculas.Duracion%TYPE,
    V_sala salas.Nombre%TYPE,
    V_cine cines.Nombre%TYPE,
    V_direccion cines.Direccion%TYPE

BEGIN

    SELECT funciones.Fecha, funciones.Precio,peliculas.Nombre,peliculas.Duracion,salas.Nombre,cines.Nombre,cines.Direccion
    INTO V_fecha,V_precio,V_pelicula,V_duracion,V_sala,V_cine,V_direccion
    
    FROM boletos,funciones,salas,peliculas,cines
    
    WHERE boletos.idFuncion = funciones.idFuncion and
    funciones.idPelicula = peliculas.idPelicula and
    funciones.idSala = salas.idSala and salas.idCine = cines.idCine and
    idBoleto = P_idBoleto;

    DBMS_OUTPUT.put_line('Boleto   #' || P_idBoleto || ':'); 
    DBMS_OUTPUT.put_line('Pelicula: ' || V_pelicula);
    DBMS_OUTPUT.put_line('Fecha:    ' || V_fecha);
    DBMS_OUTPUT.put_line('Duracion: ' || V_duracion);
    DBMS_OUTPUT.put_line('Sala:     ' || V_pelicula);
    DBMS_OUTPUT.put_line('Cine:     ' || V_cine);
    DBMS_OUTPUT.put_line('Dirección:' || V_direccion || 'h');

END imprimir_boleto;