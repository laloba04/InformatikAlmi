CREATE TABLE CONTACTO (
    ID_contacto NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(255),
    apellido1 VARCHAR(255),
    apellido2 VARCHAR(255),
    email VARCHAR(255),
    telefono VARCHAR(15),
    usuario VARCHAR(50),
    password VARCHAR(50),
    nif varchar(15)
);

drop table contacto;

CREATE TABLE PROVEEDOR (
    nif VARCHAR(15) PRIMARY KEY,
    empresa VARCHAR(255),
    localidad VARCHAR(100),
    id_producto_proveedor NUMBER
);

CREATE TABLE PEDIDO_PROVEEDOR (
    id_pedido_proveedor NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    NIF VARCHAR(15)
);

CREATE TABLE PRODUCTO (
    N_SERIE VARCHAR(50) PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion VARCHAR(255),
    stock NUMBER,
    marca VARCHAR(100),
    precio_actual FLOAT,
    cod_tipo NUMBER,
    id_producto_proveedor NUMBER,
    id_producto_pedido_proveedor NUMBER,
    id_pedido_cliente_producto NUMBER
);

CREATE TABLE TIPO (
    COD_TIPO NUMBER PRIMARY KEY,
    categoria VARCHAR(255)
);

CREATE TABLE PEDIDO_CLIENTE (
    id_pedido_cliente NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    cantidad INT,
    pagado CHAR(1) CHECK (pagado IN ('Y', 'N')),
    id_pedido_cliente_producto NUMBER,
    dni VARCHAR(15),
    id_cliente NUMBER
);

CREATE TABLE EMPLEADO (
    DNI VARCHAR(15) PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido1 VARCHAR(255),
    Apellido2 VARCHAR(255),
    email VARCHAR(255),
    telefono VARCHAR(15),
    usuario VARCHAR(50),
    password VARCHAR(50)
);



CREATE TABLE CLIENTE (
    ID_Cliente NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(255),
    Apellido1 VARCHAR(255),
    Apellido2 VARCHAR(255),
    email VARCHAR(255),
    telefono VARCHAR(15)
);

CREATE TABLE VENTA (
    ID_venta NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    id_pedido_cliente NUMBER
);

CREATE TABLE PRODUCTO_PROVEEDOR (
    id_producto_proveedor NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    precio_proveedor FLOAT,
    cantidad INT,
    NIF VARCHAR(15),
    N_SERIE VARCHAR(50)
);

CREATE TABLE PRODUCTO_PEDIDO_PROVEEDOR (
    id_producto_proveedor NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    precio_proveedor FLOAT,
    cantidad INT,
    id_pedido_proveedor NUMBER,
    N_SERIE VARCHAR(50)
);

CREATE TABLE PEDIDO_CLIENTE_PRODUCTO (
    id_pedido_cliente_producto NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    precio_venta FLOAT,
    N_SERIE VARCHAR(50),
    id_pedido_cliente NUMBER
);

CREATE TABLE PLACA_BASE (
    id_pb NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    slots_g INT,
    N_SERIE VARCHAR(50)
);
CREATE TABLE TARJETA_GRAFICA (
    id_tg NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    memoria VARCHAR(50),
    DDR VARCHAR(20),
    N_SERIE VARCHAR(50)
);
CREATE TABLE MICROPROCESADOR (
    id_mp NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nucleos INT,
    Hz FLOAT,
    N_SERIE VARCHAR(50)
);
CREATE TABLE PSU (
    id_psu NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    potencia INT,
    categoria VARCHAR(50),
    N_SERIE VARCHAR(50)
);
CREATE TABLE TARJETA_SONIDO (
    id_ts NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    N_SERIE VARCHAR(50)
);
CREATE TABLE REFRIGERACION_LIQUIDA (
    id_rl NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    volumen FLOAT,
    N_SERIE VARCHAR(50)
);
CREATE TABLE MONITOR (
    id_mon NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    tama�o FLOAT,
    Hz INT,
    Px VARCHAR(20),
    N_SERIE VARCHAR(50)
);
CREATE TABLE RATON (
    id_Ra NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    tipo_conexion VARCHAR(50),
    optica VARCHAR(10),
    dpi INT,
    N_SERIE VARCHAR(50)
);
CREATE TABLE TECLADO (
    id_teclado NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    switches VARCHAR(50),
    tipo_conexion VARCHAR(50),
    velocidad VARCHAR(20),
    N_SERIE VARCHAR(50)
);
CREATE TABLE CAJA (
    id_caja NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    dimensiones VARCHAR(50),
    N_ventiladores INT,
    N_SERIE VARCHAR(50)
);

CREATE TABLE VENTILADOR (
    id_ventilador NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    rpm INT,
    N_SERIE VARCHAR(50)
);
CREATE TABLE DISIPADOR (
    id_dis NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    material VARCHAR(50),
    N_SERIE VARCHAR(50)
);




