USE miautopuntocom;

INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (13, 'Honda', 'Civic', 2026, 'Rojo', 27500.00, '2HGFC2F59MH654321', 'Sedán', 'nuevo');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (14, 'Ford', 'Mustang', 2019, 'Azul', 35000.00, '1FA6P8CF5K5112233', 'Deportivo', 'usado');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (15, 'Chevrolet', 'Spark', 2017, 'Plata', 18900.00, 'KL8CD6SA9HC445566', 'Hatchback', 'nuevo');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (16, 'Toyota', 'Hilux', 2024, 'Blanco', 41200.00, '8AJBA3CD9R1778899', 'Pickup', 'usado');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (17, 'Kia', 'Sportage', 2021, 'Verde', 21500.00, 'KNDPM3AC5M7990011', 'SUV', 'usado');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (18, 'Mazda', 'Mazda 3', 2023, 'Rojo', 23800.00, '3MZBPACL7PM223344', 'Sedán', 'usado');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (19, 'Ford', 'F-150', 1990, 'Negro', 55500.00, 'S7MZBPACPM5263313', 'Camión', 'nuevo');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (20, 'Toyota', 'Corolla', 2022, 'Blanco', 18500.00, '1HGBH41JXMN109186', 'Sedán', 'usado');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (21, 'Hyundai', 'Tucson', 2025, 'Gris', 32900.00, 'KM8J3CA46MU123456', 'SUV', 'nuevo');
INSERT INTO vehiculos (ID, MARCA, MODELO, ANO, COLOR, PRECIO, NUM_VIN, TIPO, ESTADO) VALUES (22, 'Nissan', 'Frontier', 2020, 'Negro', 24000.00, '1N6AD0EV5LN789012', 'Pickup', 'usado');

INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (1, 'Luis', 'Fernandez', '109990001', '70548080', 'l.fernan@email.com', '300 Metros San Jose Centro');
INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (7, 'Carlos', 'Vargas', '106690001', '88112233', 'carlos.vargas@ejemplo.com', 'San José, Escazú, 200m norte de la iglesia');
INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (8, 'Mariana', 'Solís', '209990002', '87223344', 'mariana.solis@ejemplo.com', 'Alajuela, Centro, frente al parque central');
INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (9, 'Andrés', 'Mora', '309990003', '70334455', 'andres.mora@ejemplo.com', 'Cartago, Tres Ríos, residencial La Floresta');
INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (10, 'Sofía', 'Jiménez', '409990004', '61445566', 'sofia.jimenez@ejemplo.com', 'Heredia, Belén, costado oeste del polideportivo');
INSERT INTO clientes (ID, NOMBRE, APELLIDO, CDI, TELEFONO, EMAIL, DIRECCION) VALUES (11, 'Diego', 'Araya', '509990005', '85556677', 'diego.araya@ejemplo.com', 'Guanacaste, Liberia, barrio Los Cerros');

INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (1, 'Esteban', 'Rojas', '108880011', '2022-03-15', 12.50);
INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (2, 'Gabriela', 'Méndez', '208880022', '2023-07-01', 15.00);
INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (3, 'Javier', 'Chacón', '308880033', '2021-11-20', 18.75);
INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (4, 'Natalia', 'Quesada', '408880044', '2024-01-10', 10.00);
INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (5, 'Roberto', 'Alvarado', '508880055', '2025-05-05', 20.00);
INSERT INTO vendedores (ID, NOMBRE, APELLIDO, CDI, FECHA_CONTRATO, COMISION) VALUES (6, 'Camila', 'Cordero', '608880066', '2026-02-18', 8.50);

INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (1, 13, 1, 1, '2025-08-23', 25700.00, 'efectivo');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (2, 20, 1, 2, '2026-06-18', 12700.00, 'financiamiento');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (3, 22, 1, 3, '2024-11-23', 45200.00, 'tarjeta');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (4, 21, 1, 4, '2025-02-20', 89400.00, 'financiamiento');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (5, 14, 1, 5, '2026-03-19', 20100.00, 'efectivo');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (6, 19, 1, 6, '2026-05-03', 15300.00, 'tarjeta');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (7, 17, 1, 4, '2026-11-10', 18920.00, 'tarjeta');
INSERT INTO ventas (ID, vehiculos_id, clientes_id, vendedores_id, FECHA_VENTA, PRECIO_F, METODO_PAGO) VALUES (8, 15, 1, 2, '2025-06-04', 24200.00, 'efectivo');
