Create Database ZetaEnvios
Go
Use ZetaEnvios
Go

Create Table Sucursales 
(
	Id_ciudad int,
	Nombre varchar (50),
	Ciudad varchar (100),
	Telefono int,
	Constraint PK_Sucursales Primary Key (Id_Ciudad)
);

Create Table Funcionarios 
(
	Id_funcionario int,
	Nombre varchar (50),
	Teléfono int,
	Fecha_de_nacimiento date,
	Constraint PK_Funcionarios Primary Key (Id_funcionario)
);

Create Table Administradores 
(
	Id_funcionario int,
	Nombre varchar (50),
	Nivel_de_estudios varchar (50),
	Constraint PK_Administradores Primary Key (Id_funcionario)
);

Create Table Transportistas 
(
	Id_funcionario int,
	Nombre varchar (50),
	Experiencia int,
	Constraint PK_Transportistas Primary Key (Id_funcionario)
); 

Create Table Clientes 
(
	Id_cliente int,
	Nombre varchar (50),
	Teléfono int,
	Constraint PK_Clientes Primary Key (Id_cliente)
);

Create Table Camiones 
(
	Id_camion int, 
	Placa int,
	Marca varchar (50),
	Tonelaje int,
	Constraint PK_Camiones Primary Key (Id_camion)
);

Create Table Viajes 
(
	Id_viaje int,
	Monto_viaticos int,
	Ciudad_inicio varchar (100),
	Ciudad_destino varchar (100),
	Fecha_inicio date,
	Fecha_final date,
	Constraint PK_Viajes Primary Key (Id_viaje)
);

Create Table Paquetes 
(
	Id_paquete int,
	Ciudad_inicio varchar (100),
	Ciudad_destino varchar (100),
	Constraint PK_Paquetes Primary Key (Id_paquete)
);

Create Table Categorias
(
	Id_categoría int,
	Categoria_funcionario varchar (50),
	Constraint PK_Categorias Primary Key (Id_categoría)
);


Create table Via_Suc_Cam_Fun
(
	Id_viaje int,
	Id_ciudad int,
	Id_camion int,
	Id_funcionario int, 
	Constraint FK_V_S_C_F_V Foreign key (Id_viaje) References Viajes (Id_viaje),
	Constraint FK_V_S_C_F_S Foreign key (Id_ciudad) References Sucursales (Id_ciudad),
	Constraint FK_V_S_C_F_C Foreign key (Id_camion) References Camiones (Id_camion),
	Constraint FK_V_S_C_F_F Foreign key (Id_funcionario) References Transportistas (Id_funcionario)
);

Create Table Paq_Cli
(
	Id_paquete int,
	Id_cliente int,
	Constraint FK_P_C_P Foreign key (Id_paquete) References Paquetes (Id_paquete),
	Constraint FK_P_C_C Foreign key (Id_cliente) References Clientes (Id_cliente)
);

Create Table Fun_Suc
(
	Id_ciudad int,
	Id_funcionario int,
	Constraint FK_F_S_S Foreign key (Id_ciudad) References Sucursales (Id_ciudad),
	Constraint FK_F_S_F Foreign key (Id_funcionario) References Funcionarios (Id_funcionario)
);

Create Table Fun_Cat
(
	Id_funcionario int,
	Id_categoría int,
	Constraint FK_F_C_F Foreign key (Id_funcionario) References Funcionarios (Id_funcionario),
	Constraint FK_F_C_A Foreign key (Id_funcionario) References Administradores (Id_funcionario),
	Constraint FK_F_C_T Foreign key (Id_funcionario) References Transportistas (Id_funcionario),
	Constraint FK_F_C_C Foreign key (Id_categoría) References Categorias (Id_categoría)
);

Create Table Paq_Via_SucIn_SucFin
(
	Id_paquete int,
	Id_viaje int,
	Id_ciudadin int,
	Id_ciudadfin int,
	Constraint FK_P_V_SI_SF_P Foreign key (Id_paquete) References Paquetes (Id_paquete),
	Constraint FK_P_V_SI_SF_V Foreign key (Id_viaje) References Viajes (Id_viaje),
	Constraint FK_P_V_SI_SF_SI Foreign key (Id_ciudadin) References Sucursales (Id_ciudad),
	Constraint FK_P_V_SI_SF_SF Foreign key (Id_ciudadfin) References Sucursales (Id_ciudad)
);