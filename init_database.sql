/* Borramos todas las tablas */
DROP TABLE IF EXISTS Gimnasio; 
DROP TABLE IF EXISTS Usuario; 
DROP TABLE IF EXISTS Monitor; 
DROP TABLE IF EXISTS Socio;
DROP TABLE IF EXISTS Clase;

/* 
 * Tabla Gimnasio: registra los diferentes ginmasios de la misma dueña,
 * guarda en ella datos que permiten identificarlo como su id único, 
 * nombre, la cantidad de socios que tiene etc. 
 */

 CREATE TABLE IF NOT EXISTS Gimnasio (
    id INT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    no_plantas INT NOT NULL,
    n_socios INT NOT NULL
 );


/* 
 * Tabla Usuairio: registra a las personas que están en el gimnasio, 
 * estas personas pueden ser socios o monitores del gimnasio.
 */

CREATE TABLE IF NOT EXISTS Usuario (
  dni VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  n_telefono INT NOT NULL,
  correo VARCHAR(255)
);

/* 
 * Tabla Monitor: registra el dni de los usuarios que son a su vez
 * monitores del gimnasio
 */


CREATE TABLE IF NOT EXISTS Monitor (
  dni_monitor VARCHAR(9) PRIMARY KEY,
  FOREIGN KEY (dni_monitor) REFERENCES Usuario(dni)
);

/* 
 * Tabla Socio: registra el dni de los usuarios que son a su vez
 * socios del gimnasio
 */


CREATE TABLE IF NOT EXISTS Socio (
  dni_socio VARCHAR(9) PRIMARY KEY,
  FOREIGN KEY (dni_socio) REFERENCES Usuario(dni)
);

/*
 * Tabla Pago: registra los pagos realizados por los socios
 */

CREATE TABLE IF NOT EXISTS Pago (
  dni VARCHAR(9) PRIMARY KEY,
  tarifa FLOAT NOT NULL,
  fecha DATE NOT NULL,
  metodo_pago VARCHAR(20),
  FOREIGN KEY (dni) REFERENCES Socio(dni_socio)
);

/* 
 * Tabla Clase: registra las sesiones programadas que ofrece el gimnasio
 * y guarda su horario, de que es la clase (zumba, spinning, etc) y 
 * monitor que imparte dicha clase
 */

 /* 

 CREATE TABLE IF NOT EXISTS Clase (
    deporte VARCHAR(15) PRIMARY KEY,
    dni_monitor VARCHAR(9) NOT NULL,
    horario TIME NOT NULL,
    FOREING KEY (dni_monitor) REFERENCES MONITOR (dni)
 ); */