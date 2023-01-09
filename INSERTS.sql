--------------------------------------
-- data para la tabla GIMNASIO
--------------------------------------
INSERT INTO `GIMNASIO` (`ID`, `NOMBRE`, `DIRECCION`, `NO_PLANTAS`, `N_SOCIOS`) VALUES (1,'URBAN','CALLE LAS MERCEDES', 2, 4);
INSERT INTO `GIMNASIO` (`ID`, `NOMBRE`, `DIRECCION`, `NO_PLANTAS`, `N_SOCIOS`) VALUES (2,'SAN BENITO','AVENIDA DE LA PAZ', 1, 4);

SELECT * FROM GIMNASIO;

--------------------------------------
-- data para la tabla MONITOR
--------------------------------------
INSERT INTO `MONITOR`(`DNI`,`NOMBRE`,`N_TELEFONO`,`HORA_ENTRADA`,`HORA_SALIDA`,`SALARIO`) VALUES (35223879,'PABLO',622580718,07:30:00, 14:00:00, 1200);
INSERT INTO `MONITOR`(`DNI`,`NOMBRE`,`N_TELEFONO`,`HORA_ENTRADA`,`HORA_SALIDA`,`SALARIO`) VALUES (44335678,'GABRIEL',623328983,14:00:00, 21:30:00, 1200);

INSERT INTO `MONITOR`(`DNI`,`NOMBRE`,`N_TELEFONO`,`HORA_ENTRADA`,`HORA_SALIDA`,`SALARIO`) VALUES (51204358,'JOSE',666580718,08:00:00, 14:30:00, 1200);
INSERT INTO `MONITOR`(`DNI`,`NOMBRE`,`N_TELEFONO`,`HORA_ENTRADA`,`HORA_SALIDA`,`SALARIO`) VALUES (33454321,'JAVI',622321718,14:30:00, 22:00:00, 1200);

SELECT * FROM MONITOR;


--------------------------------------
-- data para la tabla SOCIO
--------------------------------------
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (33233342,'DIEGO',643580718,1);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (45353413,'ANGEL',655583118,2);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (35443265,'JUAN', 614320292,3);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (36883265,'MIGUEL',633580718,4);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (48665476,'SERGIO', 622580000,5);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (40215644,'MANUEL', 654580718,6);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (35223877,'JORGE', 622000718,7);
INSERT INTO `SOCIO` (`DNI`,`NOMBRE`,`N_TELEFONO`,`ID_SOCIO`) VALUES (29887340,'PACO', 622580666,8);

SELECT * FROM SOCIO;


--------------------------------------
-- data para la tabla PAGO
--------------------------------------
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (33233342, 35, 2023-01-02, "TARJETA");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (45353413, 35, 2022-12-20, "BIZUM");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (35443265, 35, 2023-01-03, "TARJETA");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (36883265, 35, 2023-01-05, "EFECTIVO");

INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (48665476, 35, 2022-12-22, "BIZUM");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (40215644, 35, 2023-01-09, "TARJETA");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (35223877, 35, 2023-01-07, "TARJETA");
INSERT INTO `PAGO`(`DNI`, `TARIFA`, `FECHA`, `METODO_PAGO`) VALUES (29887340, 35, 2023-01-02, "EFECTIVO");

SELECT * FROM PAGO;


--------------------------------------
-- data para la tabla CLASE
--------------------------------------
INSERT INTO `CLASE`(`ID_GIMNASIO`,`DEPORTE`, `DNI_MONITOR`, `HORA_INICIO`,`HORA_FIN`) VALUES (1,'ZUMBA',35223879, 10:00:00, 11:30:00);
INSERT INTO `CLASE`(`ID_GIMNASIO`,`DEPORTE`, `DNI_MONITOR`, `HORA_INICIO`,`HORA_FIN`) VALUES (1,'ACONDICIONAMIENTO',16:00:00, 17:30:00);

INSERT INTO `CLASE`(`ID_GIMNASIO`,`DEPORTE`, `DNI_MONITOR`, `HORA_INICIO`,`HORA_FIN`) VALUES (2,'SPINNING',51204358, 12:00:00, 13:30:00);
INSERT INTO `CLASE`(`ID_GIMNASIO`,`DEPORTE`, `DNI_MONITOR`, `HORA_INICIO`,`HORA_FIN`) VALUES (2,'YOGA',33454321, 18:00:00, 19:30:00);

SELECT * FROM CLASE;


--------------------------------------
-- data para la tabla PRODUCTO
--------------------------------------
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (1, 15, 'CHOCOLATINA', 'DECATHLON',`ALIMENTACION`,NULL, 2.5);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (2, 8, 'BATIDO DE PROTEINAS', 'DECATHLON',`ALIMENTACION`,NULL, 3);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (3, 4, 'STRAPS', 'DECATHLON',`ACCESORIO`,NULL, 7.5);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (4, 6, 'CINTURON', 'DECATHLON',`ACCESORIO`,NULL, 20);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (5, 2, 'CAMISA', 'DECATHLON',`MERCHANDISING`,'L', 12);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (6, 3, 'CAMISA', 'DECATHLON',`MERCHANDISING`,'M', 12);
INSERT INTO `PRODUCTO`(`PROD_ID`,`STOCK`, `NOMBRE`, `FABRICANTE`,`TIPO`,`TALLA`, `PRECIO`) VALUES (7, 6, 'SUDADERA', 'DECATHLON',`MERCHANDISING`,'M', 22);

SELECT * FROM PRODUCTO;


--------------------------------------
-- data para la tabla ASISTENCIA
--------------------------------------
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (33233342, 2023-01-02, 13:00:00, 15:00:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (45353413, 2023-01-03, 09:00:00, 10:30:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (35443265, 2023-01-10, 13:00:00, 15:00:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (36883265, 2023-01-09, 14:00:00, 15:00:00);

INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (48665476, 2023-01-08, 10:00:00, 11:00:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (40215644, 2023-01-02, 18:00:00, 19:00:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (35223879, 2023-01-03, 19:00:00, 19:30:00);
INSERT INTO `ASISTENCIA`(`DNI_SOCIO`, `FECHA`,`HORA_ENTRADA`,`HORA_SALIDA`) VALUES (29887340, 2023-01-04, 10:00:00, 11:00:00);

SELECT * FROM ASISTENCIA;


--------------------------------------
-- data para la tabla MAQUINA
--------------------------------------
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (1,1, 'DECATHLON', 'BICICLETA');
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (2,2, 'DECATHLON', 'MAQUINA DISCOS');
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (3,1, 'DECATHLON', 'BANCO');
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (4,2, 'DECATHLON', 'REMO');
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (5,2, 'DECATHLON', 'HIP-THRUST');
INSERT INTO `MAQUINA`(`ID_MAQUINA`,`ID_GIMNASIO`, `FABRICANTE`, `TIPO`) VALUES (6,1, 'DECATHLON', 'BARRA');

SELECT * FROM * MAQUINA;


--------------------------------------
-- data para la tabla SUBSCRITO
--------------------------------------
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (33233342, 1);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (45353413, 1);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (35443265, 1);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (36883265, 1);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (48665476, 2);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (40215644, 2);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (35223877, 2);
INSERT INTO `SUBSCRITO`(`DNI_SOCIO`,`ID_GIMNASIO`) VALUES (29887340, 2);

SELECT * FROM SUBSCRITO;


--------------------------------------
-- data para la tabla TRABAJA
--------------------------------------
INSERT INTO `TRABAJA`(`DNI_MONITOR`,`ID_GIMNASIO`) VALUES(35223879, 1);
INSERT INTO `TRABAJA`(`DNI_MONITOR`,`ID_GIMNASIO`) VALUES(44335678, 1);
INSERT INTO `TRABAJA`(`DNI_MONITOR`,`ID_GIMNASIO`) VALUES(51204358, 2);
INSERT INTO `TRABAJA`(`DNI_MONITOR`,`ID_GIMNASIO`) VALUES(33454321, 2);

SELECT * FROM TRABAJA;


--------------------------------------
-- data para la tabla OFRECE
--------------------------------------
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(1,1);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(1,2);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(1,3);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(1,4);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(2,5);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(2,6);
INSERT INTO `OFRECE`(`ID_GIMNASIO`,`PROD_ID`) VALUES(2,7);

SELECT * FROM OFRECE;