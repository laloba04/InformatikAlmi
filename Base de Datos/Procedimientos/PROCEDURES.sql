--------------------------CASO GENERAL------------------------------
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_PROCEDURE(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_PROCEDURE;
/

---------------------CASO CAJA
SELECT * FROM CAJA;

CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_CAJA(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_dimensiones VARCHAR2, v_n_ventiladores NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);
    
    --INSERTAR EN LA TABLA CAJA
    INSERT INTO CAJA (DIMENSIONES, N_VENTILADORES, N_SERIE)
    VALUES (v_dimensiones, v_n_ventiladores, v_n_serie);

    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_CAJA;
/

-----------------------CASO DISIPADOR
SELECT * FROM DISIPADOR;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_DISIPADOR(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_material VARCHAR2)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);
    
    INSERT INTO DISIPADOR (MATERIAL, N_SERIE)
    VALUES (v_material, v_n_serie);

    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_DISIPADOR;
/

---------------------CASO MICROPROCESADOR
SELECT * FROM MICROPROCESADOR;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_MICROPROCESADOR(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_nucleos NUMBER, v_hz NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);
    
    INSERT INTO MICROPROCESADOR (NUCLEOS, HZ, N_SERIE)
    VALUES (v_nucleos, v_hz, v_n_serie);

    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_MICROPROCESADOR;
/
------------------- CASO MONITOR
SELECT * FROM MONITOR;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_MONITOR(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_tamaño FLOAT, v_hz NUMBER, v_px VARCHAR2)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO MONITOR (TAMAÑO, HZ, PX, N_SERIE)
    VALUES (v_tamaño, v_hz, v_px, v_n_serie);
    COMMIT;
 
END INSERTAR_PRODUCTO_MONITOR;
/

------CASO PLACA_BASE
SELECT * FROM PLACA_BASE;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_PLACABASE(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_slots NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO PLACA_BASE (SLOTS_G, N_SERIE)
    VALUES (v_slots, v_n_serie);
    COMMIT;
 
END INSERTAR_PRODUCTO_PLACABASE;
/
--------CASO PSU
SELECT * FROM PSU;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_PSU(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER,v_potencia NUMBER, v_categoria VARCHAR2)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO PSU (POTENCIA, CATEGORIA, N_SERIE)
    VALUES (v_potencia, v_categoria, v_n_serie);
    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_PSU;
/
---------------------CASO RATON
SELECT * FROM RATON;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_RATON(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_conex VARCHAR2, v_optica VARCHAR2, v_dpi NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO RATON (TIPO_CONEXION, OPTICA, DPI, N_SERIE)
    VALUES (v_conex, v_optica, v_dpi, v_n_serie);
    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_RATON;
/
---------------CASO REFRIGERACION_LIQUIDA 
SELECT * FROM REFRIGERACION_LIQUIDA;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_REFRIGERACIONLIQUIDA(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_volumen FLOAT)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO REFRIGERACION_LIQUIDA (VOLUMEN, N_SERIE)
    VALUES (v_volumen, v_n_serie);
    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_REFRIGERACIONLIQUIDA;
/
---------- CASO TAJETA_GRAFICA 
SELECT * FROM TARJETA_GRAFICA;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_TARJETAGRAFICA(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_memoria VARCHAR2, v_ddr VARCHAR2)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO TARJETA_GRAFICA (MEMORIA, DDR, N_SERIE)
    VALUES (v_memoria, v_ddr, v_n_serie);
    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_TARJETAGRAFICA;
/
------------CASO TARJETA_SONIDO
SELECT * FROM TARJETA_SONIDO;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_TARJETASONIDO(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);
    
    INSERT INTO TARJETA_SONIDO (N_SERIE)
    VALUES (v_n_serie);

    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_TARJETASONIDO;
/
--------------CASO TECLADO
SELECT * FROM TECLADO;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_TECLADO(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_switches VARCHAR2, v_conex VARCHAR2, v_velocidad VARCHAR2)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    INSERT INTO TECLADO (SWITCHES, TIPO_CONEXION, VELOCIDAD, N_SERIE)
    VALUES (v_switches, v_conex, v_velocidad, v_n_serie);
    -- Confirmar la transacción si todo ha sido exitoso
    COMMIT;
 
END INSERTAR_PRODUCTO_TECLADO;
/
----------------------CASO VENTILADOR
SELECT * FROM VENTILADOR;
CREATE OR REPLACE PROCEDURE INSERTAR_PRODUCTO_VENTILADOR(v_n_serie VARCHAR2, v_nombre VARCHAR2, v_descripcion VARCHAR2, v_marca VARCHAR2, v_precio FLOAT, v_cod_tipo NUMBER, v_nif NUMBER, v_rpm NUMBER)  
AS
BEGIN
    -- Insertar en la tabla PRODUCTO y obtener el ID recién insertado
    INSERT INTO PRODUCTO (N_SERIE, NOMBRE, DESCRIPCION, MARCA, PRECIO_ACTUAL, COD_TIPO)
    VALUES (v_n_serie, v_nombre, v_descripcion, v_marca, (v_precio* 2), v_cod_tipo);

    -- Insertar en la tabla PRODUCTO_PROVEEDOR usando el ID obtenido de la tabla PRODUCTO
    INSERT INTO PRODUCTO_PROVEEDOR (PRECIO_PROVEEDOR, NIF, N_SERIE, FECHA)
    VALUES (v_precio, v_nif, v_n_serie, CURRENT_DATE);

    -- Confirmar la transacción si todo ha sido exitoso
    INSERT INTO VENTILADOR (RPM, N_SERIE)
    VALUES (v_rpm, v_n_serie);
    COMMIT;
 
END INSERTAR_PRODUCTO_VENTILADOR;
/

COMMIT;
SELECT * FROM PRODUCTO;
SELECT * FROM PRODUCTO_PROVEEDOR;
SELECT * FROM VENTILADOR;