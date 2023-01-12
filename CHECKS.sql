/*
CHECKS
*/

ALTER TABLE socio
ADD CONSTRAINT socio_id
CHECK (id_socio > 0);

ALTER TABLE gimnasio
ADD CONSTRAINT gimnasio_id
CHECK (id > 0);

ALTER TABLE monitor
ADD CONSTRAINT monitor_schedule
CHECK (Hora_entrada < Hora_salida);

ALTER TABLE monitor
ADD CONSTRAINT monitor_salary
CHECK (Salario > 0);

ALTER TABLE clase
ADD CONSTRAINT clase_schedule
CHECK (Hora_fin > Hora_inicio);

ALTER TABLE socio
ADD CONSTRAINT socio_tlf
CHECK (N_telefono like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

ALTER TABLE socio
ADD CONSTRAINT socio_DNI
CHECK (DNI like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]');


ALTER TABLE monitor
ADD CONSTRAINT socio_tlf
CHECK (N_telefono like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

ALTER TABLE monitor
ADD CONSTRAINT socio_DNI
CHECK (DNI like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]');


ALTER TABLE maquina
ADD CONSTRAINT maquina_id
CHECK (Id_maquina > 0);

ALTER TABLE pago
ADD CONSTRAINT pago_value
CHECK (Tarifa > 0);

ALTER TABLE producto
ADD CONSTRAINT producto_value
CHECK (Precio > 0);

ALTER TABLE producto
ADD CONSTRAINT producto_stock
CHECK (Stock > 0);

ALTER TABLE asistencia
ADD CONSTRAINT check_asistencia
CHECK (Hora_salida > Hora_entrada);

ALTER TABLE producto
ADD CONSTRAINT product_type
CHECK ((tipo = 'merchandising')or (tipo ='alimentacion') or (tipo ='accesorio'));

ALTER TABLE producto
ADD CONSTRAINT size_type
CHECK (talla = 's')or (talla ='m') or (talla ='l') or (talla ='xl') or (talla = NULL);

ALTER TABLE clase
ADD CONSTRAINT class_type
CHECK ((deporte = 'yoga')or (deporte ='zumba') or (deporte ='boxeo') or (deporte ='spinning'));

ALTER TABLE maquina
ADD CONSTRAINT maquina_type
CHECK ((tipo = 'cardio')or (tipo ='powerlifting') or (tipo ='banco'));

