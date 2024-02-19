------------------CAJA

create or replace NONEDITIONABLE PROCEDURE update_caja(v_old_n_serie VARCHAR2, 
                                        v_new_nombre VARCHAR2, 
                                        v_new_n_serie VARCHAR2, 
                                        v_new_descripcion VARCHAR2, 
                                        v_new_marca VARCHAR2, 
                                        v_new_cod_tipo NUMBER, 
                                        v_new_precio FLOAT, 
                                        v_new_dimensiones VARCHAR2,
                                        v_new_n_ventiladores NUMBER)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE caja DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_CAJA';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla caja
    UPDATE caja
    SET N_SERIE = v_new_n_serie, 
        DIMENSIONES = v_new_dimensiones,
        N_VENTILADORES = v_new_n_ventiladores
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE caja ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_CAJA';
END;

------------------DISIPADOR

create or replace NONEDITIONABLE PROCEDURE update_disipador(v_old_n_serie VARCHAR2, v_new_nombre VARCHAR2, v_new_n_serie VARCHAR2, v_new_descripcion VARCHAR2, v_new_marca VARCHAR2, v_new_cod_tipo number, v_new_precio float, v_new_material varchar2)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE disipador DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_DISIPADOR';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, NOMBRE = v_new_nombre, DESCRIPCION = v_new_descripcion, MARCA = v_new_marca, COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla disipador
    UPDATE disipador
    SET N_SERIE = v_new_n_serie, MATERIAL = v_new_material
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE disipador ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_DISIPADOR';
END;

---------------MICROPROCESADOR

create or replace NONEDITIONABLE PROCEDURE update_microprocesador(v_old_n_serie VARCHAR2, 
                                                   v_new_nombre VARCHAR2, 
                                                   v_new_n_serie VARCHAR2, 
                                                   v_new_descripcion VARCHAR2, 
                                                   v_new_marca VARCHAR2, 
                                                   v_new_cod_tipo NUMBER, 
                                                   v_new_precio FLOAT, 
                                                   v_new_nucleos NUMBER,
                                                   v_new_hz FLOAT)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE microprocesador DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_MICROPROCESADOR';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla microprocesador
    UPDATE microprocesador
    SET N_SERIE = v_new_n_serie, 
        NUCLEOS = v_new_nucleos,
        HZ = v_new_hz
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE microprocesador ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_MICROPROCESADOR';
END;


-------------------------MONITOR


create or replace NONEDITIONABLE PROCEDURE update_monitor(v_old_n_serie VARCHAR2, 
                                           v_new_nombre VARCHAR2, 
                                           v_new_n_serie VARCHAR2, 
                                           v_new_descripcion VARCHAR2, 
                                           v_new_marca VARCHAR2, 
                                           v_new_cod_tipo NUMBER, 
                                           v_new_precio FLOAT, 
                                           v_new_tamaño FLOAT,
                                           v_new_hz NUMBER,
                                           v_new_px VARCHAR2)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE monitor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_MONITOR';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla monitor
    UPDATE monitor
    SET N_SERIE = v_new_n_serie, 
        TAMAÑO = v_new_tamaño,
        HZ = v_new_hz,
        PX = v_new_px
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE monitor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_MONITOR';
END;


-----------------------PLACA BASE


create or replace NONEDITIONABLE PROCEDURE update_placa_base(v_old_n_serie VARCHAR2, 
                                              v_new_nombre VARCHAR2, 
                                              v_new_n_serie VARCHAR2, 
                                              v_new_descripcion VARCHAR2, 
                                              v_new_marca VARCHAR2, 
                                              v_new_cod_tipo NUMBER, 
                                              v_new_precio FLOAT, 
                                              v_new_slots_g NUMBER)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE placa_base DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_PLACA_BASE';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla placa_base
    UPDATE placa_base
    SET N_SERIE = v_new_n_serie, 
        SLOTS_G = v_new_slots_g
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE placa_base ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_PLACA_BASE';
END;



-------------------------PSU


create or replace NONEDITIONABLE PROCEDURE update_psu(v_old_n_serie VARCHAR2, 
                                       v_new_nombre VARCHAR2, 
                                       v_new_n_serie VARCHAR2, 
                                       v_new_descripcion VARCHAR2, 
                                       v_new_marca VARCHAR2, 
                                       v_new_cod_tipo NUMBER, 
                                       v_new_precio FLOAT, 
                                       v_new_potencia NUMBER,
                                       v_new_categoria VARCHAR2)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE psu DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_PSU';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla psu
    UPDATE psu
    SET N_SERIE = v_new_n_serie, 
        POTENCIA = v_new_potencia,
        CATEGORIA = v_new_categoria
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE psu ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_PSU';
END;



--------------------------RATON


create or replace NONEDITIONABLE PROCEDURE update_raton(v_old_n_serie VARCHAR2, 
                                         v_new_nombre VARCHAR2, 
                                         v_new_n_serie VARCHAR2, 
                                         v_new_descripcion VARCHAR2, 
                                         v_new_marca VARCHAR2, 
                                         v_new_cod_tipo NUMBER, 
                                         v_new_precio FLOAT, 
                                         v_new_tipo_conexion VARCHAR2,
                                         v_new_optica VARCHAR2,
                                         v_new_dpi NUMBER)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE raton DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_RATON';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla raton
    UPDATE raton
    SET N_SERIE = v_new_n_serie, 
        TIPO_CONEXION = v_new_tipo_conexion,
        OPTICA = v_new_optica,
        DPI = v_new_dpi
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE raton ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_RATON';
END;


--------------------------REF LIQUIDA


create or replace NONEDITIONABLE PROCEDURE update_refrigeracion_liquida(v_old_n_serie VARCHAR2, 
                                                         v_new_nombre VARCHAR2, 
                                                         v_new_n_serie VARCHAR2, 
                                                         v_new_descripcion VARCHAR2, 
                                                         v_new_marca VARCHAR2, 
                                                         v_new_cod_tipo NUMBER, 
                                                         v_new_precio FLOAT, 
                                                         v_new_volumen FLOAT)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE refrigeracion_liquida DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_REFRIGERACION_LIQUIDA';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla refrigeracion_liquida
    UPDATE refrigeracion_liquida
    SET N_SERIE = v_new_n_serie, 
        VOLUMEN = v_new_volumen
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE refrigeracion_liquida ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_REFRIGERACION_LIQUIDA';
END;


----------TARJETA GRAFICA


create or replace NONEDITIONABLE PROCEDURE update_tarjeta_grafica(v_old_n_serie VARCHAR2, 
                                                  v_new_nombre VARCHAR2, 
                                                  v_new_n_serie VARCHAR2, 
                                                  v_new_descripcion VARCHAR2, 
                                                  v_new_marca VARCHAR2, 
                                                  v_new_cod_tipo NUMBER, 
                                                  v_new_precio FLOAT, 
                                                  v_new_memoria VARCHAR2,
                                                  v_new_ddr VARCHAR2)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE tarjeta_grafica DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TARJETA_GRAFICA';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla tarjeta_grafica
    UPDATE tarjeta_grafica
    SET N_SERIE = v_new_n_serie, 
        MEMORIA = v_new_memoria,
        DDR = v_new_ddr
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE tarjeta_grafica ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TARJETA_GRAFICA';
END;


------------------TARJETA DE SONIDO

create or replace NONEDITIONABLE PROCEDURE update_tarjeta_sonido(v_old_n_serie VARCHAR2, 
                                                 v_new_nombre VARCHAR2, 
                                                 v_new_n_serie VARCHAR2, 
                                                 v_new_descripcion VARCHAR2, 
                                                 v_new_marca VARCHAR2, 
                                                 v_new_cod_tipo NUMBER, 
                                                 v_new_precio FLOAT)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE tarjeta_sonido DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TARJETA_SONIDO';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla tarjeta_sonido
    UPDATE tarjeta_sonido
    SET N_SERIE = v_new_n_serie
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE tarjeta_sonido ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TARJETA_SONIDO';
END;


---------------- TECLADO


create or replace NONEDITIONABLE PROCEDURE update_teclado(v_old_n_serie VARCHAR2, 
                                           v_new_nombre VARCHAR2, 
                                           v_new_n_serie VARCHAR2, 
                                           v_new_descripcion VARCHAR2, 
                                           v_new_marca VARCHAR2, 
                                           v_new_cod_tipo NUMBER, 
                                           v_new_precio FLOAT, 
                                           v_new_switches VARCHAR2,
                                           v_new_tipo_conexion VARCHAR2,
                                           v_new_velocidad VARCHAR2)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE teclado DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TECLADO';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla teclado
    UPDATE teclado
    SET N_SERIE = v_new_n_serie, 
        SWITCHES = v_new_switches,
        TIPO_CONEXION = v_new_tipo_conexion,
        VELOCIDAD = v_new_velocidad
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE teclado ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_TECLADO';
END;


------------------------ VENTILADOR

create or replace NONEDITIONABLE PROCEDURE update_ventilador(v_old_n_serie VARCHAR2, 
                                              v_new_nombre VARCHAR2, 
                                              v_new_n_serie VARCHAR2, 
                                              v_new_descripcion VARCHAR2, 
                                              v_new_marca VARCHAR2, 
                                              v_new_cod_tipo NUMBER, 
                                              v_new_precio FLOAT, 
                                              v_new_rpm NUMBER)
AS
BEGIN
    -- Desactivar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE ventilador DISABLE CONSTRAINT FK_N_SERIE_PRODUCTO_VENTILADOR';

    -- Realizar la actualización en la tabla producto
    UPDATE producto
    SET N_SERIE = v_new_n_serie, 
        NOMBRE = v_new_nombre, 
        DESCRIPCION = v_new_descripcion, 
        MARCA = v_new_marca, 
        COD_TIPO = v_new_cod_tipo
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla producto_proveedor
    UPDATE producto_proveedor
    SET N_SERIE = v_new_n_serie, 
        PRECIO_PROVEEDOR = v_new_precio
    WHERE N_SERIE = v_old_n_serie;

    -- Realizar la actualización en la tabla ventilador
    UPDATE ventilador
    SET N_SERIE = v_new_n_serie, 
        RPM = v_new_rpm
    WHERE N_SERIE = v_old_n_serie;

    -- Activar la restricción de integridad
    EXECUTE IMMEDIATE 'ALTER TABLE producto_proveedor ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO';
    EXECUTE IMMEDIATE 'ALTER TABLE ventilador ENABLE CONSTRAINT FK_N_SERIE_PRODUCTO_VENTILADOR';
END;
