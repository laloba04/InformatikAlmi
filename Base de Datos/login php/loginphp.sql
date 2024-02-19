


CREATE OR REPLACE FUNCTION login_php(p_usuario VARCHAR2, p_password VARCHAR2) RETURN NUMBER AS
    v_user_id NUMBER := -1;
BEGIN

    FOR c IN (SELECT usuario, password, id_contacto
              FROM contacto
              WHERE USUARIO = p_usuario AND PASSWORD = p_password) 
    LOOP
        v_user_id := c.id_contacto;
        EXIT;
    END LOOP;
    RETURN v_user_id;
END login_php;
/
 SELECT * FROM CONTACTO;

DECLARE
    v_user_id NUMBER;
BEGIN
    v_user_id := login_php('Alm2i', 'Almi123');
    
    IF v_user_id <> -1 THEN
        DBMS_OUTPUT.PUT_LINE('Inicio de sesión exitoso. ID del usuario: ' || v_user_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Inicio de sesión fallido');
    END IF;
END;
/
