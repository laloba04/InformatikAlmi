CREATE OR REPLACE FUNCTION login_java(p_usuario VARCHAR2, p_password VARCHAR2) RETURN NUMBER AS
    v_user_dni NUMBER := -1;
BEGIN
    FOR i IN (SELECT usuario, password, dni
              FROM empleado
              WHERE usuario = p_usuario AND password = p_password)
    LOOP

        DECLARE
            dni_empleado empleado.dni%TYPE;
        BEGIN
            dni_empleado := i.dni;
            v_user_dni := dni_empleado;
            EXIT;
        END;
    END LOOP;
    RETURN v_user_dni;
END login_java;
/


DECLARE
    v_user_dni NUMBER;
BEGIN
    v_user_dni := login_java('Almi', 'Almi123');
    
    IF v_user_dni <> -1 THEN
        DBMS_OUTPUT.PUT_LINE('Inicio de sesión exitoso. DNI del usuario: ' || v_user_dni);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Inicio de sesión fallido');
    END IF;
END;
/

 
 
 
 
 
 
 
 
 select * from empleado;
