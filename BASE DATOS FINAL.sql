USE master
CREATE DATABASE DB_MTE


 USE DB_MTE
 CREATE TABLE VENDEDORES
 (
    ID_empleado INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	nomb1 VARCHAR (26),
	nomb2 VARCHAR (26),
	apell1 VARCHAR (26),
	apell2 VARCHAR (26),
    numcelu VARCHAR (8)NOT NULL,
	direc VARCHAR (30),
  )



  USE DB_MTE
  CREATE TABLE CLIENTES 
 ( 
 
    codcli INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	nomb1 VARCHAR (26),
	nomb2 VARCHAR (26),
	apell1 VARCHAR (26),
	apell2 VARCHAR (26),
	numcelu VARCHAR (8),
	direc VARCHAR (30) ,
 )


 USE DB_MTE
  CREATE TABLE VENTAS
 ( 
    ID_venta INT PRIMARY KEY IDENTITY (1,1)NOT NULL,
	articulo VARCHAR(26),
    fecha DATE not null,
    precio VARCHAR (50),
	codcli INT not null,
	ID_empleado INT not null
	CONSTRAINT fk_VENDEDORES FOREIGN KEY (ID_empleado) REFERENCES VENDEDORES (ID_empleado),
	CONSTRAINT fk_CLIENTES FOREIGN KEY (codcli) REFERENCES CLIENTES (codcli)
 )

 USE DB_MTE
CREATE TABLE PRODUCTO
(    
    ID_prod INT PRIMARY KEY IDENTITY (1,1)NOT NULL,
	nombre VARCHAR (50),
	marca VARCHAR (26),
	modelo VARCHAR (26),
	decrip VARCHAR (100),
	garant VARCHAR  (10),
	Precio  VARCHAR (20),
	stock INT,
 )


 USE DB_MTE
 CREATE TABLE VENTAPRODUCTO
 (
    nrofactura INT PRIMARY KEY IDENTITY (1,1) not null,
    fecha VARCHAR (8),
	monto VARCHAR (8),
	ID_venta INT not null,
	ID_prod INT not null,
	CONSTRAINT fk_PRODUT FOREIGN KEY (ID_prod) REFERENCES PRODUCTO (ID_prod),
	CONSTRAINT fk_VENT FOREIGN KEY (ID_venta) REFERENCES VENTAS (ID_venta)
  )

   USE DB_MTE
  CREATE TABLE DEVOLUCIONES
 ( 
    ID_devoluciones INT PRIMARY KEY IDENTITY (1,1)NOT NULL,
	descrip VARCHAR (100),
	fecha DATE not null,
	ID_prod INT not null,
	CONSTRAINT fk_prod FOREIGN KEY (ID_prod) REFERENCES PRODUCTO (ID_prod),
  )

