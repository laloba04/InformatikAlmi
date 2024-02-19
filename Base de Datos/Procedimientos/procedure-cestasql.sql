
create or replace PROCEDURE cesta_pedido(
    v_pagado VARCHAR2,
    v_dni VARCHAR2,
    v_n_serie_pedido VARCHAR2,
    v_id_cliente NUMBER
)
AS
    v_id_pedido_cliente NUMBER;
BEGIN
    -- Insertar en la tabla pedido_cliente
    INSERT INTO pedido_cliente(DNI, FECHA, N_SERIE_PEDIDO, PAGADO)
    VALUES(v_dni, CURRENT_DATE, v_n_serie_pedido, v_pagado)
    RETURNING ID_PEDIDO_CLIENTE INTO v_id_pedido_cliente;
        -- Insertar en la tabla cliente_pedido_cliente

    INSERT INTO cliente_pedido_cliente(id_pedido_cliente, id_cliente)
    VALUES (v_id_pedido_cliente, v_id_cliente);
    
        -- Insertar en la relacional entre pedido_cliente y producto
        
    INSERT INTO pedido_cliente_producto (precio_venta, n_serie, id_pedido_cliente)
    VALUES ((SELECT precio_actual FROM producto WHERE n_serie = v_n_serie_pedido), v_n_serie_pedido, v_id_pedido_cliente);
    

END cesta_pedido;
/

commit;







