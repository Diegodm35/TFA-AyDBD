/*
CHECKS
*/

ALTER TABLE pago
ADD CONSTRAINT pago_value
CHECK (Tarifa > 0);

ALTER TABLE producto
ADD CONSTRAINT producto_value
CHECK (Precio > 0);

ALTER TABLE producto
ADD CONSTRAINT producto_stock
CHECK (Stock > 0);

ALTER TABLE monitor
ADD CONSTRAINT monitor_salary
CHECK (Salario > 0);

ALTER TABLE asistencia
ADD CONSTRAINT check_asistencia
CHECK (Hora_salida > Hora_entrada);

ALTER TABLE clase
ADD CONSTRAINT clase_schedule
CHECK (Hora_fin > Hora_inicio);

ALTER TABLE monitor
ADD CONSTRAINT monitor_schedule
CHECK (Hora_entrada < Hora_salida);
