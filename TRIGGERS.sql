/*TRIGGERS */

/* aumentar el contador de socios de un gimnasio al insertar   */
CREATE OR REPLACE FUNCTION increase_socio() returns TRIGGER as $new_register1$
	BEGIN
		ALTER TABLE gimnasio
		SET Número_socios = Numero_socios + 1
		WHERE Identificador = new.GIMNASIO_identificador
	END;
$new_register1$ LANGUAJE plpgsql;

CREATE TRIGGER trigger_increase_gym AFTER INSERT ON SUSCRITO
FOR EACH ROW EXECUTE PROCEDURE new_register1();

/* disminuir el contador de socios de un gimnasio al insertar   */
CREATE OR REPLACE FUNCTION decrease_socio() returns TRIGGER as $new_register2$
	BEGIN
		ALTER TABLE gimnasio
		SET Número_socios = Numero_socios - 1
		WHERE Identificador = old.GIMNASIO_identificador
	END;
$new_register2$ LANGUAJE plpgsql;

CREATE TRIGGER trigger_decrease_gym AFTER UPDATE OR DELETE ON SUSCRITO
FOR EACH ROW EXECUTE PROCEDURE new_register2();


/* al insertar un usuario, su id_socio es el ultimo + 1  */
CREATE TRIGGER socios 
AFTER INSERT ON SOCIO
BEGIN 
	ALTER TABLE SOCIO 
	SET new.NUMERO_SOCIO = 1 + (SELECT MAX(NUMERO_SOCIO) FROM SOCIO)
END;



/*
que los monitores trabajen 8 horas siempre
*/
CREATE TRIGGER jornada_laboral
BEFORE INSERT OR UPDATE INSERT ON  monitor
BEGIN
	IF (new.Hora_entrada - new.Hora_salida) <= '08:00:00'
		THEN
			new.Hora_salida = (new.Hora_salida +('08:00:00' - (new.Hora_entrada - new.Hora_salida)))
    END IF;
END;





/*
si hay un stock de + 50, se reduce un 50% el precio 
*/
CREATE TRIGGER overStock
BEFORE INSERT OR UPDATE ON stock
BEGIN 
	IF ( stock > 50)
		THEN
			new.Precio = (old.precio % 2)
		END IF;
	END;



/*
CREATE FUNCTION public.last_updated() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.last_update = CURRENT_TIMESTAMP;
    RETURN NEW;
END $$;

CREATE TRIGGER last_updated BEFORE UPDATE ON public.actor FOR EACH ROW EXECUTE FUNCTION public.last_updated();




DELIMITER $$ 

USE  FINAL $$
DROP TRIGGER IF EXISTS FINAL.ENVIO_AFTER_INSERT  $$
USE  FINAL $$
CREATE DEFINER = CURRENT_USER TRIGGER    FINAL.ENVIO_AFTER_INSERT  AFTER INSERT ON  ENVIO  FOR EACH ROW
BEGIN
	UPDATE PEDIDO SET PEDIDO.Coste_Total = PEDIDO.Coste_Productos + new.Coste WHERE NEW.PEDIDO_Num_Pedido = PEDIDO.Num_Pedido AND NEW.PEDIDO_Usuario_DNI = PEDIDO.Usuario_DNI;
END$$

DELIMITER ;
*/