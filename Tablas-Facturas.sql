-- create database miNegocio;
USE miNegocio;
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    RFC VARCHAR(13) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    CP int(5) NOT NULL,
    email VARCHAR(50) NOT NULL
);
CREATE TABLE Productos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    costo FLOAT(15) NOT NULL,
    cantidad INT(10) NOT NULL
);
CREATE TABLE Facturas(
	folio INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    total FLOAT(20) NOT NULL,
    cliente INT NOT NULL,
    FOREIGN KEY (cliente) REFERENCES Clientes(id)
);

CREATE TABLE DetalleFacturas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	factura INT NOT NULL,
	producto INT NOT NULL,
	cantidad INT NOT NULL,
	costo DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (factura) REFERENCES Facturas(folio),
	FOREIGN KEY (producto) REFERENCES Productos(id),
	UNIQUE (factura, producto)
);

INSERT INTO Clientes (nombre, RFC, ciudad, CP, email) VALUES ('Jose', '1234fc', 'Colima', 28989,'Jose13@gmail.com'), ('Adrian', '4321fc', 'Villa de Alvarez', 28567,'Adr1213@gmail.com');
INSERT INTO Productos (nombre, costo, cantidad) VALUES ('Lápiz', 10, 100), ('Borrador', 20, 200), ('Sacapuntas', 30, 300);

