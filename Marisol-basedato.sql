 use master;
go
If DB_ID (N'ClashOfClansh') is not null
Drop database ClashOfClansh;
go
Create database ClashOfClansh
on
(
	Name = ClashOfClansh_dat,
	FileName = 'C:\BaseDatos\ClashOfClansh.mdf',
	Size = 10,
	MaxSize = 50,
	FileGrowth = 5
)
Log on
(
	Name = ClashOfClansh_log,
	FileName = 'C:\BaseDatos\ClashOfClansh.ldf',
	Size = 5MB,
	MaxSize= 25MB,
	FileGrowth = 5MB
);
go
use ClashOfClansh;
go
Create Table Adorno
(
	IdAdorno int identity(1,1),
	Nombre varchar (50) not null,
	Costo int Not null,
	MaximoDisponible int Not null,
 	NivelNecesario int Not null,
 	Estatus bit default 1 Not null
);
Create Table Aldea
(
	IdAldea int identity(1,1),
	NumPlantas int Not null,
	NumEstructura int Not null,
	NumDefensas int Not null,
	Estatus bit default 1 Not null
);
Create Table Animal
(
	IdAnimal int identity(1,1),
	IdHeroe int Not null,
	Nombre varchar (50) Not null,
	Vida int Not Null,
	Estatus bit default 1 Not null
);
Create Table Asalto
(
	IdAsalto int identity(1,1),
	IdMagiaClan int Not null,
	ClanRival varchar (50) Not null,
	NombreCapitalCR varchar (50) Not null,
	Nivel int Not null,
	TiempoAsalto datetime Not null,
	Estatus bit default 1 Not null
);
Create Table Aspecto 
(
	IdAspecto int identity(1,1),
	IdHeroe int Not null,
	IdAnimal int Not null,
	NombreInactivo varchar (50) Not null,
	NombrePose varchar (50) Not null,
	NumDerivado int Not null,
	NumAvatido int Not null,
	NumPrevilisuacion int Not null,
	Estatus bit default 1 Not null
);
Create Table Ataque
(
	IdAtaque int identity(1,1),
	IdAsalto Int Not null,
	NumTropas Int Not null,
	NumHechisos Int Not null,
	Estatus bit default 1 Not null
);
Create Table AyuntamientoBaseConstructor
(
	IdAyuntamientoBaseConstructor int identity(1,1),
	IdObjetoMagico int Not Null,
	Nivel int Not null,
	CanitdadObjetosMagicos int Not null,
	Descripcion varchar (200) Not null,
	Estatus bit default 1 Not null
);
Create Table Banco
(
 	IdBanco int identity(1,1),
	Nombre varchar (50) Not null,
	Telefono varchar (50) Not null,
 	Correo varchar (50) Not Null,
	Estatus bit default 1 Not null
);
Create Table Chat
(
	IdChat int identity(1,1),
	NombreJugador varchar (50) Not null,
	Mensaje varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table Clan
(
	IdClan int identity(1,1),
	IdChat int Not null,
	IdMagiaClan int Not null,
	Nombre varchar (50) Not null,
	Descipcion varchar (50) Not null,
	TipoDeClan varchar (50) Not null,
	MinimoTropas int Not null,
	Estatus bit default 1 Not null
);
Create Table ClanDonacion
(
	IdClanDonacion int identity(1,1),
	IdClan int Not null,
	IdDonacion int Not null,
	Estatus bit default 1 Not null
);
Create Table ClanJuegoClan
(
	IdClanJuegoClan int identity(1,1),
	IdClan int Not null,
	IdJuegoClan int Not null,
	Estatus bit default 1 Not null
);
Create Table ClanOfertaSemanal
(
	IdClanOfertaSemanal int identity(1,1),
	IdClan int Not null,
	IdOfertaSemanal int Not null,
	Estatus bit default 1 Not null
);
Create Table ClanPedido
(
	IdClanPedido int identity(1,1),
	IdClan int Not null,
	IdPedido int Not null,
	Estatus bit default 1 Not null
);
Create Table CompaniaIndividual
(
	IdCompaniaIndividual int identity(1,1),
	Nivel int Not null,
	CantidadEstrellas int Not null,
	CantidadGemas int Not null,
	CatidadOro int Not null,
	CantidadElixir int Not null,
	CantidadNegro int Not null,
	Estatus bit default 1 Not null
);
Create Table Compra
(
	IdCompra int identity(1,1),
	IdRecompensa int Not null,
	IdPaisaje int Not null,
	IdAdorno int Not null,
	IdFormaPago int Not null,
	IdConstructor int Not null,
	IdPaseBatalla int Not null,
	IdForja int Not null,
	IdAspecto int Not null,
	IdEstructura int Not null,
	IdDefensa int Not null,
	IdTienda int Not null,
	IdRecurso int Not null,
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	CantidadProducto int Not null,
	Estatus bit default 1 Not null
);
Create Table CompraDefensa
(
	IdCompraDefensa int identity(1,1),
	IdCompra int Not null,
	IdDefensa int Not null,
	Estatus bit default 1 Not null
);
Create Table CompraHechiso
(
	IdCompraHechiso int identity(1,1),
	IdCompra int Not null,
	IdHechiso int Not null,
	Estatus bit default 1 Not null
);
Create Table CompraMuro
(
	IdCompraMuro int identity(1,1),
	IdCompra int Not null,
	IdMuro int Not null,
	Estatus bit default 1 Not null
);
Create Table CompraTienda
(
	IdCompraTienda int identity(1,1),
	IdCompra int Not null,
	IdTienda int Not null,
	Estatus bit default 1 Not null
);
Create Table CompraTropa
(
	IdCompraTropa int identity(1,1),
	IdCompra int Not null,
	IdTropa int Not null,
	Estatus bit default 1 Not null
);
Create Table Constructor
(
	IdConstructor int identity(1,1),
	NumChosa int Not null,
	Estatus bit default 1 Not null
);
Create Table Defensa
(
	IdDefensa int identity(1,1),
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Funcion varchar (200) Not null, 
	Cantidad int Not null,
	Estatus bit default 1 Not null
);
Create Table Desafio 
(
	IdDesafio int identity(1,1),
	IdJugador int Not null,
	Nombre varchar (50) Not null,
	Descripcion varchar (200) Not null, 
	Puntos int Not null,
	Estatus bit default 1 Not null
); 
Create Table Donacion
(
	IdDonacion int identity(1,1),
	NombreJugador varchar (50) Not null,
	NunTropas int Not null,
	NumumHechisos int Not null,
	NumDefensas int Not null,
	Estatus bit default 1 Not null
);
Create Table Ejercito
(
	IdEjercito int identity(1,1),
	IdJugador int Not null,
	NumDefensa int Not null,
	NumHechiso int Not null,
	NumHeroe int Not null,
	NumEjercito int Not null,
	MaquinaAsendio varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table Estructura
(
	IdEstructura int identity(1,1),
	Nombre varchar (50) Not null,
	Descripcion varchar (200) Not null,
	PosimaAceleracion int Not null,
	Estatus bit default 1 Not null
);
Create Table Evento
(
	IdEvento int identity(1,1),
	IdTemporada int Not null,
	Nombre varchar (50) Not null,
	FechaInicio datetime Not null,
	FechaFinal datetime Not null,
	Descripcion varchar (200) Not null,
	Estatus bit default 1 Not null
);
Create Table Forja
(
	IdForja int identity(1,1),
	NombreRecurso varchar (50) Not null,
	CantidadRecurso int Not null,
	TiempoForjado datetime Not null,
	NumConstructores int Not null,
	CantidadForjada int Not null,
	Estatus bit default 1 Not null
);
Create Table FormaPago
(
	IdFormaPago int identity(1,1),
	IdBanco int Not null,
	TipoTarjeta varchar (50) Not null,
	NumTarjeta int Not null,
	FechaVencimiento datetime Not null,
	CVV int Not null,
	TotalCompra int Not null,
	Estatus bit default 1 Not null
);
Create Table GuerraClan
(
	IdGuerraClan int identity(1,1),
	IdClan int Not null,
	NombreCR varchar (50) Not null,
	NumParticipantesCR int Not null,
	NumEstrellasCR int Not null, 
	RecompensaOroCR int Not null, 
	RecompensaElixirCR int Not null, 
	NumTrofeosCR int Not null, 
	NombreCC varchar (50) Not null,
	NumParticipantesCC int Not null,
	NumEstrellasCC int Not null, 
	RecompensaOroCC int Not null, 
	RecompensaElixirCC int Not null, 
	NumTrofeosCC int Not null,
	Estatus bit default 1 Not null
);
Create Table GuerraClanMedalla
(
	IdGuerraClanMedalla int identity(1,1),
	IdGuerraClan int Not null,
	IdMedalla int Not null,
	Estatus bit default 1 Not null
);
Create Table Hechiso
(
	IdHechiso int identity(1,1),
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Dano int Not null,
	Costo int Not null,
	Tiempo datetime Not null, 
	Estatus bit default 1 Not null
);
Create Table Heroe
(
	IdHeroe int identity(1,1),
	IdAyuntamientoBaseConstuctor int Not null,
	Nombre varchar (50) Not null,
	Dano int Not null,
	Vida int Not null,
	TiempoRegeneracion datetime Not null,
	NivelHabilidad int Not null,
	Estatus bit default 1 Not null
);
Create Table Investigacion
(
	IdInvestigacion int identity(1,1),
	NombreInvestigacion varchar (50) Not null,
	SiguienteNivel int Not null,
	Vida int Not null,
	Estatus bit default 1 Not null
);
Create Table InvestigacionHechiso
(
	IdInvestigacionHechiso int identity(1,1),
	IdInvestigacion int Not null, 
	IdHechiso int Not null,
	Estatus bit default 1 Not null
);
Create Table InvestigacionTropa
(
	IdInvestigacionTropa int identity(1,1),
	IdInvestigacion int Not null,
	IdTropa int Not null,
	Estatus bit default 1 Not null
);
Create Table JuegoClan
(
	IdJuegoClan int identity(1,1),
	NombreJuegoClan varchar (50) Not null,
	NombreJugador varchar (50) Not null,
	puntos int Not null,
	Estatus bit default 1 Not null
);
Create Table Jugador
(
	IdJugador int identity(1,1),
	IdTesoreria int Not null,
	IdAldea int Not null,
	IdClan int Not null,
	IdCompaniaIndividual int Not null,
	Alias varchar (50) Not null,
	Nombre varchar (50) Not null,
	APaterno varchar (50) Not null,
	AMaterno varchar (50) Not null,
	Correo varchar (50) Not null,
	Contrasena varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorLigaJugador
(
	IdJugadorLigaJugador int identity(1,1),
	IdJugador int Not null,
	IdLigaJugador int Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorModoJuego
(
	IdJugadorModoJuego int identity(1,1),
	IdJugador int Not null,
	IdModoJuego int Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorRango
(
	IdJugadorRango int identity(1,1),
	IdJugador int Not null,
	IdRango int Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorTemporada
(
	IdJugadorTemporada int identity(1,1),
	IdJugador int Not null,
	IdTemporada int Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorTienda
(
	IdJugadorTienda int identity(1,1),
	IdJugador int Not null,
	IdTienda int Not null,
	Estatus bit default 1 Not null
);
Create Table JugadorTutorial
(
	IdJugadorTutorial int identity(1,1),
	IdJugador int Not null,
	IdTutorial int Not null,
	Estatus bit default 1 Not null
);
Create Table LigaJugador
(
	IdLigaJugador int identity(1,1),
	NumeroLiga int Not null,
	JugadorRival varchar (50) Not null,
	JugadorContricante varchar (50) Not null,
	NumElixirint int Not null,
	NumOro int Not null,
	NumNegro int Not null,
	Estatus bit default 1 Not null
);
Create Table LigaJugadorRecompensa
(
	IdLigaJugadorRecompensa int identity(1,1),
	IdLigaJugador int Not null,
	IdRecompensa int Not null,
	Estatus bit default 1 Not null
);
Create Table Logro
(
	IdLogro int identity(1,1),
	IdLigaJugador int Not null,
	Nombre varchar (50) Not null,
	Experiencia int Not null,
	Gemas int Not null,
	Descripcion varchar (200) Not null,
	Estatus bit default 1 Not null
);
Create Table MagiaClan
(
	IdMagiaClan int identity(1,1),
	NombreCapital varchar (50) Not null,
	Nivel int Not null,
	Estatus bit default 1 Not null
);
Create Table MaquinaAsedio
(
	IdMaquinaAsedio int identity(1,1),
	IdEjercito int Not null,
	Nombre varchar (50) Not null,
	Funcion varchar (100) Not null,
	Dano int Not null,
	Cantidad int Not null,
	Estatus bit default 1 Not null
);
Create Table Medalla
(
	IdMedalla int identity(1,1),
	Nombre varchar (50) Not null,
	Victoria int Not null,
	Estrella int Not null,
	Estatus bit default 1 Not null
);
Create Table Mejora
(
	IdMejora int identity(1,1),
	IdDefensa int Not null,
	IdTropa int Not null,
	IdHechiso int Not null,
	IdEstructura int Not null,
	IdMuro int Not null,
	IdJugador int Not null,
	IdAyuntamientoBaseConstuctor int Not null,
	NombreMejora varchar (50) Not null,
	TiempoUtilisado datetime Not null,
	NombreRecurso varchar (50) Not null,
	Cantidad int Not null,
	Estatus bit default 1 Not null
);
Create Table ModoJuego
(
	IdModoJuego int identity(1,1),
	IdCompania int Not null,
	IdLigaGuerraClanes int Not null,
	IdPractica int Not null,
	Estatus bit default 1 Not null
);
Create Table Muro
(
	IdMuro int identity(1,1),
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Costo int Not null,
	NivelDano int Not null,
	Estatus bit default 1 Not null 
);
Create Table ObjetoMagico
(
	IdObjetoMagico int identity(1,1),
	Nombre varchar (50) Not null,
	MaximoCapacidad int Not null,
	PrecioVenta int Not null,
	uso varchar (50) Not null,
	Estatus bit default 1 Not null 
);
Create Table OfertaSemanal
(
	IdOfertaSemanal int identity(1,1),
	NombreProducto varchar (50) Not null,
	CantidadGemas int Not null,
	MaximoDisponible int Not null,
	TiempoCarga datetime Not null,
	Estatus bit default 1 Not null 
);
Create Table Paisaje 
(
	IdPaisaje int identity(1,1),
	IdAldea int Not null,
	Nombre varchar (50) Not null,
	Descripcion varchar (100) Not null,
	Estatus bit default 1 Not null 
);
Create Table PaseBatalla
(
	IdPaseBatalla int identity(1,1),
	NoTemporada int Not null,
	Duracion datetime Not null,
	Donaciones int Not null, 
	Beneficios varchar (200) Not null,
	Estatus bit default 1 Not null
);
Create Table Pedido
(
	IdPedido int identity(1,1),
	NombreJugador varchar (50) Not null,
	NumTropas int Not null,
	NumHechisos int Not null,
	NumDefensas int Not null,
	Tiempo datetime Not null,
	Estatus bit default 1 Not null
);
Create Table Practica
(
	IdPractica int identity(1,1),
	IdCompaniaIndividual int Not null,
	Nivel int Not null,
	NumTropasRemplaso int Not null,
	NombreCampoBatalla varchar (50) Not null,
	CantidadOro int Not null,
	CantidadElixir int Not null,
	Estatus bit default 1 Not null
);
Create Table Rango
(
	IdRango int identity(1,1),
	Nombre varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table RangoMedalla
(
	IdRangoMedalla int identity(1,1),
	IdRango int Not null,
	IdMedalla int Not null,
	Estatus bit default 1 Not null
);
Create Table Recompensa
(
	IdRecompensa int identity(1,1),
	Nombre varchar (50) Not null,
	Requerimiento varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table Recurso
(
	IdRecurso int identity(1,1),
	IdTesoreria int Not null,
	Nombre varchar (50) Not null,
	LugarAlmacen varchar (50) Not null,
	Cantidad int Not null,
	Descripcion varchar (50) Not null,
	Estatus bit default 1 Not null
);
Create Table Temporada
(
	IdTemporada int identity(1,1),
	Numero int Not null,
	Nombre varchar (50) Not null,
	FechaInicio datetime Not null,
	FechaFinal datetime Not null,
	Estatus bit default 1 Not null
);
Create Table Tesoreria
(
	IdTesoreria int identity(1,1),
	NombreRecurso varchar (50) Not null,
	CantidadAoE int Not null,
	LugarAlmacen varchar (50) Not null,
	CantidadTotal int Not null,
	Estatus bit default 1 Not null
);
Create Table Tienda
(
	IdTienda int identity(1,1),
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	MaxCantidad int Not null,
	Estatus bit default 1 Not null
);
Create Table Tropa
(
	IdTropa int identity(1,1),
	Nombre varchar (50) Not null,
	Nivel int Not null,
	DanoxSegundo int Not null,
	Vida int Not null,
	Estatus bit default 1 Not null
);
Create Table Tutorial
(
	IdTutorial int identity(1,1),
	Nombre varchar (50) Not null,
	Duracion datetime Not null,
	Descripcion varchar (100) Not null,
	Estatus bit default 1 Not null
);
Create Table Venta
(
	IdVenta int identity(1,1),
	IdObjetoMagico int Not null,
	NombreObjetoMagico varchar (50) Not null,
	CanitidadGemas int Not null,
	CanitdadObjetoMagico int Not null,
	Estatus bit default 1 Not null
);

--Llaves Primarias
Alter Table Adorno add constraint PK_Adorno Primary key(IdAdorno)
Alter Table Aldea add constraint PK_Aldea Primary key(IdAldea)
Alter Table Animal add constraint PK_Animal Primary key(IdAnimal)
Alter Table Asalto add constraint PK_Asalto Primary key(IdAsalto)
Alter Table Aspecto add constraint PK_Aspecto Primary key(IdAspecto)
Alter Table Ataque add constraint PK_Ataque Primary key(IdAtaque)
Alter Table AyuntamientoBaseConstructor add constraint PK_AyuntamientoBaseConstructor Primary key(IdAyuntamientoBaseConstructor)
Alter Table Banco add constraint PK_Banco Primary key(IdBanco)
Alter Table Chat add constraint PK_Chat Primary key(IdChat)
Alter Table Clan add constraint PK_Clan Primary key(IdClan)
Alter Table ClanDonacion add constraint PK_ClanDonacion Primary key(IdClanDonacion)
Alter Table ClanJuegoClan add constraint PK_ClanJuegoClan Primary key(IdClanJuegoClan)
Alter Table ClanOfertaSemanal add constraint PK_ClanOfertaSemanal Primary key(IdClanOfertaSemanal)
Alter Table ClanPedido add constraint PK_ClanPedido Primary key(IdClanPedido)
Alter Table CompaniaIndividual add constraint PK_CompaniaIndividual Primary key(IdCompaniaIndividual)
Alter Table Compra add constraint PK_Compra Primary key(IdCompra)
Alter Table CompraDefensa add constraint PK_CompraDefensa Primary key(IdCompraDefensa)
Alter Table CompraHechiso add constraint PK_CompraHechiso Primary key(IdCompraHechiso)
Alter Table CompraMuro add constraint PK_CompraMuro Primary key(IdCompraMuro)
Alter Table CompraTienda add constraint PK_CompraTienda Primary key(IdCompraTienda)
Alter Table CompraTropa add constraint PK_CompraTropa Primary key(IdCompraTropa)
Alter Table Constructor add constraint PK_Constructor Primary key(IdConstructor)
Alter Table Defensa add constraint PK_Defensa Primary key(IdDefensa)
Alter Table Desafio add constraint PK_Desafio Primary key(IdDesafio)
Alter Table Donacion add constraint PK_Donacion Primary key(IdDonacion)
Alter Table Ejercito add constraint PK_Ejercito Primary key(IdEjercito)
Alter Table Estructura add constraint PK_Estructura Primary key(IdEstructura)
Alter Table Evento add constraint PK_Evento Primary key(IdEvento)
Alter Table Forja add constraint PK_Forja Primary key(IdForja)
Alter Table FormaPago add constraint PK_FormaPago Primary key(IdFormaPago)
Alter Table GuerraClan add constraint PK_GuerraClan Primary key(IdGuerraClan)
Alter Table GuerraClanMedalla add constraint PK_GuerraClanMedalla Primary key(IdGuerraClanMedalla)
Alter Table Hechiso add constraint PK_Hechiso Primary key(IdHechiso)
Alter Table Heroe add constraint PK_Heroe Primary key(IdHeroe)
Alter Table Investigacion add constraint PK_Investigacion Primary key(IdInvestigacion)
Alter Table InvestigacionHechiso add constraint PK_InvestigacionHechiso Primary key(IdInvestigacionHechiso)
Alter Table InvestigacionTropa add constraint PK_InvestigacionTropa Primary key(IdInvestigacionTropa)
Alter Table JuegoClan add constraint PK_JuegoClan Primary key(IdJuegoClan)
Alter Table Jugador add constraint PK_Jugador Primary key(IdJugador)
Alter Table JugadorLigaJugador add constraint PK_JugadorLigaJugador Primary key(IdJugadorLigaJugador)
Alter Table JugadorModoJuego add constraint PK_JugadorModoJuego Primary key(IdJugadorModoJuego)
Alter Table JugadorRango add constraint PK_JugadorRango Primary key(IdJugadorRango)
Alter Table JugadorTemporada add constraint PK_JugadorTemporada Primary key(IdJugadorTemporada)
Alter Table JugadorTienda add constraint PK_JugadorTienda Primary key(IdJugadorTienda)
Alter Table JugadorTutorial add constraint PK_JugadorTutorial Primary key(IdJugadorTutorial)
Alter Table LigaJugador add constraint PK_LigaJugador Primary key(IdLigaJugador)
Alter Table LigaJugadorRecompensa add constraint PK_LigaJugadorRecompensa Primary key(IdLigaJugadorRecompensa)
Alter Table Logro add constraint PK_Logro Primary key(IdLogro)
Alter Table MagiaClan add constraint PK_MagiaClan Primary key(IdMagiaClan)
Alter Table MaquinaAsedio add constraint PK_MaquinaAsedio Primary key(IdMaquinaAsedio)
Alter Table Medalla add constraint PK_Medalla Primary key(IdMedalla)
Alter Table Mejora add constraint PK_Mejora Primary key(IdMejora) 
Alter Table ModoJuego add constraint PK_ModoJuego Primary key(IdModoJuego)
Alter Table Muro add constraint PK_Muro Primary key(IdMuro)
Alter Table ObjetoMagico add constraint PK_ObjetoMagico Primary key(IdObjetoMagico)
Alter Table OfertaSemanal add constraint PK_OfertaSemanal Primary key(IdOfertaSemanal)
Alter Table Paisaje add constraint PK_Paisaje Primary key(IdPaisaje)
Alter Table PaseBatalla add constraint PK_PaseBatalla Primary key(IdPaseBatalla)
Alter Table Pedido add constraint PK_Pedido Primary key(IdPedido)
Alter Table Practica add constraint PK_Practica Primary key(IdPractica)
Alter Table Rango add constraint PK_Rango Primary key(IdRango)
Alter Table RangoMedalla add constraint PK_RangoMedalla Primary key(IdRangoMedalla)
Alter Table Recompensa add constraint PK_Recompensa Primary key(IdRecompensa)
Alter Table Recurso add constraint PK_Recurso Primary key(IdRecurso)
Alter Table Temporada add constraint PK_Temporada Primary key(IdTemporada)
Alter Table Tesoreria add constraint PK_Tesoreria Primary key(IdTesoreria)
Alter Table Tienda add constraint PK_Tienda Primary key(IdTienda)
Alter Table Tropa add constraint PK_Tropa Primary key(IdTropa)
Alter Table Tutorial add constraint PK_Tutorial Primary key(IdTutorial)
Alter Table Venta add constraint PK_Venta Primary key(IdVenta)

Alter Table Animal add constraint FK_AnimalHeroe foreign key (IdHeroe)References
Heroe(IdHeroe)
Alter Table Asalto add constraint FK_AsaltoMagiaClan foreign key (IdMagiaClan)References
MagiaClan(IdMagiaClan)
Alter Table Aspecto add constraint FK_AspectoHeroe foreign key (IdHeroe)References
Heroe(IdHeroe)
Alter Table Aspecto add constraint FK_AspectoAnimal foreign key (IdAnimal)References
Animal(IdAnimal)
Alter Table Ataque add constraint FK_AtaqueAsalto foreign key (IdAsalto)References
Asalto(IdAsalto)
Alter Table AyuntamientoBaseConstructor add constraint FK_AyuntamientoBaseConstructorObjetoMagico foreign key (IdObjetoMagico)References
ObjetoMagico(IdObjetoMagico)
Alter Table Clan add constraint FK_ClanChat foreign key (IdChat)References
Chat(IdChat)
Alter Table Clan add constraint FK_ClanMagiaClan foreign key (IdMagiaClan)References
MagiaClan(IdMagiaClan)
Alter Table ClanDonacion add constraint FK_ClanDonacionClan foreign key (IdClan)References
Clan(IdClan)
Alter Table ClanDonacion add constraint FK_ClanDonacionDonacion foreign key (IdDonacion)References
Donacion(IdDonacion)
Alter Table ClanJuegoClan add constraint FK_ClanJuegoClanClan foreign key (IdClan)References
Clan(IdClan)
Alter Table ClanJuegoClan add constraint FK_ClanJuegoClanJuegoClan foreign key (IdJuegoClan)References
JuegoClan(IdJuegoClan)
Alter Table ClanOfertaSemanal add constraint FK_ClanOfertaSemanalClan foreign key (IdClan)References
Clan(IdClan)
Alter Table ClanOfertaSemanal add constraint FK_ClanOfertaSemanalOfertaSemanal foreign key (IdOfertaSemanal)References
OfertaSemanal(IdOfertaSemanal)
Alter Table ClanPedido add constraint FK_ClanPedidoClan foreign key (IdClan)References
Clan(IdClan)
Alter Table ClanPedido add constraint FK_ClanPedidoPedido foreign key (IdPedido)References
Pedido(IdPedido)
Alter Table Compra add constraint FK_CompraRecompensa foreign key (IdRecompensa)References
Recompensa(IdRecompensa)
Alter Table Compra add constraint FK_CompraPaisaje foreign key (IdPaisaje)References
Paisaje(IdPaisaje)
Alter Table Compra add constraint FK_CompraAdorno foreign key (IdAdorno)References
Adorno(IdAdorno)
Alter Table Compra add constraint FK_CompraFormaPago foreign key (IdFormaPago)References
FormaPago(IdFormaPago)
Alter Table Compra add constraint FK_CompraConstructor foreign key (IdConstructor)References
Constructor(IdConstructor)
Alter Table Compra add constraint FK_CompraPaseBatalla foreign key (IdPaseBatalla)References
PaseBatalla(IdPaseBatalla)
Alter Table Compra add constraint FK_CompraForja foreign key (IdForja)References
Forja(IdForja)
Alter Table Compra add constraint FK_CompraAspecto foreign key (IdAspecto)References
Aspecto(IdAspecto)
Alter Table Compra add constraint FK_CompraEstructura foreign key (IdEstructura)References
Estructura(IdEstructura)
Alter Table Compra add constraint FK_CompraDefensa foreign key (IdDefensa)References
Defensa(IdDefensa)
Alter Table Compra add constraint FK_CompraTienda foreign key (IdTienda)References
Tienda(IdTienda)
Alter Table Compra add constraint FK_CompraRecurso foreign key (IdRecurso)References
Recurso(IdRecurso)
Alter Table CompraDefensa add constraint FK_CompraDefensaCompra foreign key (IdCompra)References
Compra(IdCompra)
Alter Table CompraDefensa add constraint FK_CompraDefensaDefensa foreign key (IdDefensa)References
Defensa(IdDefensa)
Alter Table CompraHechiso add constraint FK_CompraHechisoCompra foreign key (IdCompra)References
Compra(IdCompra)
Alter Table CompraHechiso add constraint FK_CompraHechisoHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso)
Alter Table CompraMuro add constraint FK_CompraMuroCompra foreign key (IdCompra)References
Compra(IdCompra)
Alter Table CompraMuro add constraint FK_CompraMuroMuro foreign key (IdMuro)References
Muro(IdMuro)
Alter Table CompraTienda add constraint FK_CompraTiendaCompra foreign key (IdCompra)References
Compra(IdCompra)
Alter Table CompraTienda add constraint FK_CompraTiendaTienda foreign key (IdTienda)References
Tienda(IdTienda)
Alter Table CompraTropa add constraint FK_CompraTropaCompra foreign key (IdCompra)References
Compra(IdCompra)
Alter Table CompraTropa add constraint FK_CompraTropaTropa foreign key (IdTropa)References
Tropa(IdTropa)
Alter Table Desafio add constraint FK_DesafioJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table Ejercito add constraint FK_EjercitoJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table Evento add constraint FK_EventoTemporada foreign key (IdTemporada)References
Temporada(IdTemporada)
Alter Table FormaPago add constraint FK_FormaPagoBanco foreign key (IdBanco)References
Banco(IdBanco)
Alter Table GuerraClan add constraint FK_GuerraClanClan foreign key (IdClan)References
Clan(IdClan)
Alter Table GuerraClanMedalla add constraint FK_GuerraClanMedallaGuerraClan foreign key (IdGuerraClan)References
GuerraClan(IdGuerraClan)
Alter Table GuerraClanMedalla add constraint FK_GuerraClanMedallaMedalla foreign key (IdMedalla)References
Medalla(IdMedalla)
Alter Table Heroe add constraint FK_HeroeAyuntamientoBaseConstructor foreign key (IdAyuntamientoBaseConstuctor)References
AyuntamientoBaseConstructor(IdAyuntamientoBaseConstructor)
Alter Table InvestigacionHechiso add constraint FK_InvestigacionHechisoInvestigacion foreign key (IdInvestigacion)References
Investigacion(IdInvestigacion)
Alter Table InvestigacionHechiso add constraint FK_InvestigacionHechisoHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso)
Alter Table InvestigacionTropa add constraint FK_InvestigacionTropaInvestigacion foreign key (IdInvestigacion)References
Investigacion(IdInvestigacion)
Alter Table InvestigacionTropa add constraint FK_InvestigacionTropaTropa foreign key (IdTropa)References
Tropa(IdTropa)
Alter Table Jugador add constraint FK_JugadorTesoreria foreign key (IdTesoreria)References
Tesoreria(IdTesoreria)
Alter Table Jugador add constraint FK_JugadorAldea foreign key (IdAldea)References
Aldea(IdAldea)
Alter Table Jugador add constraint FK_JugadorClan foreign key (IdClan)References
Clan(IdClan)
Alter Table Jugador add constraint FK_JugadorCompaniaIndividual foreign key (IdCompaniaIndividual)References
CompaniaIndividual(IdCompaniaIndividual)
Alter Table JugadorLigaJugador add constraint FK_JugadorLigaJugadorJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorLigaJugador add constraint FK_JugadorLigaJugadorLigaJugador foreign key (IdLigaJugador)References
LigaJugador(IdLigaJugador)
Alter Table JugadorModoJuego add constraint FK_JugadorModoJuegorJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorModoJuego add constraint FK_JugadorModoJuegoModoJugador foreign key (IdModoJuego)References
ModoJuego(IdModoJuego)
Alter Table JugadorRango add constraint FK_JugadorRangoJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorRango add constraint FK_JugadorRangoRango foreign key (IdRango)References
Rango(IdRango)
Alter Table JugadorTemporada add constraint FK_JugadorTemporadaJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorTemporada add constraint FK_JugadorTemporadaTemporada foreign key (IdTemporada)References
Temporada(IdTemporada)
Alter Table JugadorTienda add constraint FK_JugadorTiendaJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorTienda add constraint FK_JugadorTiendaTienda foreign key (IdTienda)References
Tienda(IdTienda)
Alter Table JugadorTutorial add constraint FK_JugadorTutorialJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table JugadorTutorial add constraint FK_JugadorTutorialTutorial foreign key (IdTutorial)References
Tutorial(IdTutorial)
Alter Table LigaJugadorRecompensa add constraint FK_LigaJugadorRecompensaLigaJugador foreign key (IdLigaJugador)References
LigaJugador(IdLigaJugador)
Alter Table LigaJugadorRecompensa add constraint FK_LigaJugadorRecompensaRecompensa foreign key (IdRecompensa)References
Recompensa(IdRecompensa)
Alter Table MaquinaAsedio add constraint FK_MaquinaAsedioEjercito foreign key (IdEjercito)References
Ejercito(IdEjercito)
Alter Table Mejora add constraint FK_MejoraDefensa foreign key (IdDefensa)References
Defensa(IdDefensa)
Alter Table Mejora add constraint FK_MejoraTropa foreign key (IdTropa)References
Tropa(IdTropa)
Alter Table Mejora add constraint FK_MejoraHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso)
Alter Table Mejora add constraint FK_MejoraEstructura foreign key (IdEstructura)References
Estructura(IdEstructura)
Alter Table Mejora add constraint FK_MejoraMuro foreign key (IdMuro)References
Muro(IdMuro)
Alter Table Mejora add constraint FK_MejoraJugador foreign key (IdJugador)References
Jugador(IdJugador)
Alter Table Mejora add constraint FK_MejoraAyuntamientoBaseConstructor foreign key (IdAyuntamientoBaseConstuctor)References
AyuntamientoBaseConstructor(IdAyuntamientoBaseConstructor)
Alter Table Paisaje add constraint FK_PaisajeAldea foreign key (IdAldea)References
Aldea(IdAldea)
Alter Table Practica add constraint FK_PracticaCompaniaIndividual foreign key (IdCompaniaIndividual)References
CompaniaIndividual(IdCompaniaIndividual)
Alter Table RangoMedalla add constraint FK_RangoMedallaRango foreign key (IdRango)References
Rango(IdRango)
Alter Table RangoMedalla add constraint FK_RangoMedallaMedalla foreign key (IdMedalla)References
Medalla(IdMedalla)
Alter Table Recurso add constraint FK_RecursoTesoreria foreign key (IdTesoreria)References
Tesoreria(IdTesoreria)
Alter Table Venta add constraint FK_VentaObjetoMagico foreign key (IdObjetoMagico)References
ObjetoMagico(IdObjetoMagico)
Alter Table Logro add constraint FK_LogroLigaJugador foreign key (IdLigaJugador) References
LigaJugador(IdLigaJugador)

--Tabla Adorno
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Antorcha', 500, 4, 5);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Maciso de acianos', 2500, 4, 2);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Maciso de girasoles', 2500, 4, 5);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Valeta', 10000, 1, 7);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Calavera antigua', 500000,1, 10);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Estatua de la P.E.K.K.A', 1000000, 1, 3);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera blanca', 5000, 1, 6);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera pirata', 500, 1, 7);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Estatua de poder de héroe', 500, 4, 5);
go
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera de reunion', 15000, 5, 5);
go
UPDATE Adorno Set Nombre ='Bandera clan' WHERE IdAdorno = '1'
Delete from  Adorno where IdAdorno ='3'
Select * from Adorno

--Tabla Aldea
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (20, 50, 40);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (23, 43, 33);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (27, 65, 30);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (40, 25, 10);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (50, 20, 40);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (29, 31, 45);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (34, 34, 43);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (7, 18, 15);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (27, 13, 32);
go
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (18, 26, 46);
go
UPDATE Aldea Set NumDefensas ='23' WHERE IdAldea = '6'
Delete from  Aldea where IdAldea ='1'
Select * from Aldea

--Tabla Banco
Insert Into Banco(Nombre,Telefono,Correo) values ('Afirme','800-223-47-63','Afirme@gmail.com');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('HSBC','55-5721-22-22','mexico_une@hsbc.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('Banorte','55-5268-16-78','www.banorte.com');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('BBVA','55-5621-3434','www.bbva.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('Scotiabank','55-5123-0000','www.scotiabank.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoMultiva','55 5284 6200','www.multiva.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('ABCCapitalBanco','(81) 4000 5000','www.abccapital.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('BancaMifel','55 5282 7800','www.mifel.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoAsteca','55 1720 7000','www.bancoasteca.com.mx');
go
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoInversa','55 5625 4900','www.inbursa.com.mx');
go
UPDATE Banco Set Nombre ='Santander' WHERE IdBanco = '19'
Delete from  Banco where IdBanco ='2'
Select * from Banco

--Tabla chat
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','hola');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Brandon1812','¿cuando inicia la temporda?');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','la tempoprada inicia cada dia primero del mes');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Evelin0115','Juemos una guerra clan');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Pablo1017','necesito tropas ');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Yahir0923','yo tengo 10 arqueras');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Gilberto1289','tambien dono 5 montapuercos');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Raquel2315','necesito que se conecten  las 10:00PM');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','okey raquel2315');
go
Insert Into Chat(NombreJugador,Mensaje ) values ('Marcos0630','incio de guerra de clanes a las 9:30');
go
UPDATE Chat Set NombreJugador ='Ruben2360' WHERE IdChat = '9'
Delete from  Chat where IdChat ='2'
Select * from Chat
--Tabla Compania individual

Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (5,500,56,20000000,2365000, 23541);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (8,1298,263,63035507,3232365, 87561);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,9841,789,4203500,25452454, 44245274);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (6,632,5345,5212044,45440000, 45544);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (4,124,20,424457,45400, 42430);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (5,526,56,324124440,242424244, 45242);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,10013,74,455,2365000,54542);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,9841,789,4203500,25452454, 44245274);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (6,632,5345,5212044,45440000, 45544);
go
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (4,124,20,424457,45400, 42430);
go
UPDATE CompaniaIndividual Set Nivel ='14' WHERE IdCompaniaIndividual = '7'
Delete from  CompaniaIndividual where IdCompaniaIndividual ='4'
Select * from CompaniaIndividual

--Tabla constructor
Insert Into Constructor(NumChosa) values (31);
go
Insert Into Constructor(NumChosa) values (2);
go
Insert Into Constructor(NumChosa) values (43);
go
Insert Into Constructor(NumChosa) values (54);
go
Insert Into Constructor(NumChosa) values (5);
go
Insert Into Constructor(NumChosa) values (16);
go
Insert Into Constructor(NumChosa) values (27);
go
Insert Into Constructor(NumChosa) values (48);
go
Insert Into Constructor(NumChosa) values (19);
go
Insert Into Constructor(NumChosa) values (10);
go
UPDATE Constructor Set NumChosa ='14' WHERE IdConstructor = '2'
Delete from  Constructor where IdConstructor ='5'
Select * from Constructor

--Tabla defensa
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Canon',7,'Defender cualquier sona de la aldea',7);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre de arqueras',8,'Pueden atacar enemigos voladores',4);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Muro',5,'Mantener a los aldeanos a salvo',300);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Mortero',4,'Puede acabar con ordas de enemigos',2);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Cohete de defensa',4,'Solamente ataca enemigos voladores',6);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre mago',9,'Lasan potentes hechisos',5);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Conntrolador aéreo',2,'Controla los cielos con potentes rafagas',8);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre Tesla',4,'Si un enemigo se acerca esta inicia el ataque',2);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Ballesta',7,'Lansa rayos misticos a los enemigos',4);
go
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Aguila de artilleria',9,'Tiene un alcance casi limitado y lansa obuses',4);
go
UPDATE Defensa Set Nombre ='Catapulta' WHERE IdDefensa = '2'
Delete from  Defensa where IdDefensa ='9'
Select * from Defensa 

--Tabla Donación
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Marisol2804',9,4,1);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Brandon1812',6,2,9);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Evelin0115',10,12,3);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Pablo1017',6,3,1);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Yahir0923',9,11,2);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Gilberto1289',11,6,3);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Raquel2315',7,2,12);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Marcos0630',15,5,14);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Dany0105',20,13,8);
go
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Oscar1202',12,5,10);
go
UPDATE Donacion Set NombreJugador ='Carlos4576' WHERE IdDonacion = '5'
Delete from  Donacion where IdDonacion ='7'
Select * from Donacion
--Tabla Estructura

Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos','Creación de hechisos para enfretamientos',1)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Laboratorio','Mejora de las defensas',2)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',6)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Campamento oscucuros','Creación del ejercito',3)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',6)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Torre del reloj','Acelerea el tiempo e la aldea oscura',5)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos','Creación de hechisos para enfretamientos',1)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Campamento oscucuros','Creación del ejercito',5)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',10)
go
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Torre del reloj','Acelerea el tiempo e la aldea oscura',7)
go
UPDATE Estructura Set Nombre ='Laboratorio' WHERE IdEstructura = '10'
Delete from  Estructura where IdEstructura ='7'
Select * from Estructura

--Tabla forja 
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',4200000,2,1,14000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',4200000,'2022-12-03 01:00:00.000',2,14000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',2100000,'2022-12-03 03:30:00.000',1,7000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',3600000,'2022-12-03 04:00:00.000',2,10000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',4200000,'2022-12-03 02:30:00.000' ,1,14000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',6500000,'2022-12-03 05:00:00.000',1,20000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',100000,'2022-12-03 02:00:00.000',1,12000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',4200000,'2022-12-03 02:21:00.000',1,14000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',4200000,'2022-12-03 02:45:00.000',2,14000)
go
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',2100000,'2022-12-03 03:00:00.000',1,7000)
go
UPDATE Forja Set NombreRecurso ='Oro' WHERE IdForja = '4'
UPDATE Forja Set TiempoForjado ='2022-12-03 02:00:00.000' WHERE IdForja = '1'
Delete from  Forja where IdForja ='7'
Select * from Forja

--Tabla Hechiso
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Rayo',3,210,5,'0:02:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Furia',2,220,8,'0:06:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Hielo',3,150,4,'0:03:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Curativo',5,0,2,'0:06:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Salto',2,250,6,'0:06:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Clonador',2,300,10,'0:09:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Invisibilidad',1,280,5,'0:03:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Veneno',1,150,5,'0:03:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Aceleración',2,150,5,'0:03:00.000')
go
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Terremoto',1,200,9,'0:03:00.000')
go
UPDATE Hechiso Set Nombre = 'Esqueleto' WHERE IdHechiso = '5'
Delete from  Hechiso where IdHechiso ='7'
Select * from Hechiso
--Tabla Investigacion
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Barbaro',4,82)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Arquera',8,52)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Duende',4,50)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Esqueleto',2,24)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Gigante',5,800)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Mago',4,135)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Dragón',6,3400)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Curandera',3,900)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('P.E.K.K.A',5,5000)
go
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Bebe dragón',3,1400)
go
UPDATE Investigacion Set NombreInvestigacion = 'Valquiria' WHERE IdInvestigacion = '8'
Delete from Investigacion where IdInvestigacion ='7'
Select * from Investigacion

--Juego clan
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elimina canones', 'Marisol2804',30)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elimina vallestas', 'Brandon1812',50)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Usar arqueras', 'Evelin0115',25)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Mejorar almacen de elixir', 'Pablo1017',45)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elaborar hechiso venenoso', 'Yahir0923',15)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Mejoarar al dragon', 'Gilberto1289',20)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Donar a un companero', 'Raquel2315',27)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Ganar 3 juegos seguidos', 'Oscar1202',32)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Ganar 3 estrellas en una sola partida ', 'Dany0105',43)
go
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Donar tropas ', 'Genaro2812',43)
go
UPDATE JuegoClan Set NombreJugador = 'Fernada0627' WHERE IdJuegoClan = '10'
Delete from JuegoClan where IdJuegoClan ='6'
Select * from JuegoClan

--LigaJugador

Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Genaro2812','Dany0105',20000,30000,35000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Marisol2804','Dany0105',15000,32000,20000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Oscar1202','David1298',280000,40000,2002)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Raquel2315','Gilberto1289',2389000,353000,353000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Evelin0115','Brandon1812',30000,40000,15000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'MariaJose3004','Fernada0232',67000,2300,5000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Litssi','Melissa3940',454300,82300,23200)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Karen0118','Claudia2309',2389000,353000,456400)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Esteban4564','Alan4545',9868700,344500,7665000)
go
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Monica2423','Marcela2342',280000,40000,2002)
go
UPDATE LigaJugador Set JugadorContricante = 'Fernada0627' WHERE IdLigaJugador = '10'
Delete from LigaJugador where IdLigaJugador ='7'
Select * from LigaJugador

--Tabla logro
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Donar gemas', 50,23,'Dono de gemas en la magia clan')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Costruir el laboratorio', 20,30,'Construir laboratorio en la aldea')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Colocar estatua ',20,15,'Colocar una estuata de cualquier clase')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar reir barbaro',30,10,'Mejorar los atribiutos del rey barbaro')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar torre de arqueras', 13,5,'Dono de gemas en la magia clan')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Donar gemas', 50,23,'Dono de gemas en la magia clan')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Costruir el laboratorio', 20,30,'Construir laboratorio en la aldea')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Colocar estatua ',20,15,'Colocar una estuata de cualquier clase')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar reir barbaro',30,10,'Mejorar los atribiutos del rey barbaro')
go
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar torre de arqueras', 13,5,'Dono de gemas en la magia clan')
go
UPDATE Logro Set Descripcion = 'Mejor los atribitos de la torre' WHERE IdLogro = '10'
Delete from Logro where IdLogro ='7'
Select * from Logro
--Tabla Magia clan

Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cima de la capital',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Valle de magos',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Campamento de bárbaros',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Laguna de globos',1,0)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cantera de golems',2,0)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Penasco de dragones',3,0)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cima de la capital oscura',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Taller constructor',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cuarto de defensas',1,1)
go
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Casa de aldeanos',1,1)
go
UPDATE MagiaClan Set Estatus = '1' WHERE IdMagiaClan = '10'
Delete from MagiaClan where IdMagiaClan ='11'
Select * from MagiaClan
--Tabla Medalla
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Bronce',400,100)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Plata',500,150)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Oro',600,200)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Cristal',700,250)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Prodijio',800,300)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Maestro',900,350)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Campeones',1000,400)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Titán',1100,450)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Amateur',1200,500)
go
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Leyenda',1300,550)
go
UPDATE Medalla Set Nombre = 'Imparable' WHERE IdMedalla = '9'
Delete from Medalla where IdMedalla ='5'
Select * from Medalla

--Tabla Muro
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Madera',1 ,500,300)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Roca',2 ,1000,500)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Marmol',3 ,5000,700)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Plata',4 ,10000,900)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Oro',5,20000,1400)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Diamante',6 ,30000,2000)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Diamante Tornasol',7 ,50000,2500)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('AceroFino',8 ,75000,3000)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Platino',9 ,100000,4000)
go
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Acero Luminoso',10 ,200000,5500)
go
UPDATE Muro Set Nombre = 'Platino Fuerte' WHERE IdMuro = '9'
Delete from Muro where IdMuro ='5'
Select * from Muro
--Tabla Objeto Magico

Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de lucha',4,50, 'se salta los temporizadores de las tropas')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de construccion',3,50,'Se salta los tiempos de las construcciones ')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de hechizos',4,50,'Se salta los tiempos de los hechizos.')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de Univrsal',1,50,'puede saltarse cualquier temporizador')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de fuerza',8,10,'mejora  las tropas y hechizos ')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de recursos',10,10,'Potencia algunas algunas estructuras durante 1 día')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de entrenamiento',6,10,'Da potencia en la guerra')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de constructor',4,15,'Acelera todos los trabajos de construcción.')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima del tiempo',5,10,'Da 30 minutos de impulso para los temporizadores.')
go
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Runa de oro',2,50,'Llenan los almacenes de recursos.')
go
UPDATE ObjetoMagico Set Nombre = 'Runa de elixir' WHERE IdObjetoMagico = '10'
Delete from ObjetoMagico where IdObjetoMagico ='5'
Select * from ObjetoMagico

--Tabla Oferta Semanal
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de entrenamiento',10,4,'2022-12-05 03:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Elixir de 500000',15,3,'2022-12-06 08:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de aceleracion',5,3,'2022-12-02 02:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Oro de 200000',15,5,'2022-12-06 08:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de hielo',5,20,'2022-12-07 05:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de entrenamiento',10,4,'2022-12-05 03:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Elixir de 500000',15,3,'2022-12-06 08:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de aceleracion',5,3,'2022-12-02 02:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Oro de 200000',15,5,'2022-12-06 08:00:00.000')
go
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de hielo',5,20,'2022-12-07 05:00:00.000')
go
UPDATE OfertaSemanal Set TiempoCarga = '2022-12-07 05:00:00.000' WHERE IdOfertaSemanal = '9'
Delete from OfertaSemanal where IdOfertaSemanal ='4'
Select * from OfertaSemanal

--Tabla Pase Batalla
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(1,'2022-12-07 05:00:00.000',10,'Titánide Eléctrica')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(2,'2022-12-05 03:00:00.000',7,'Monolito')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(3,'2022-12-02 02:00:00.000',8,'excavadora de batalla')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(4,'2022-12-06 08:00:00.000',15,'Hechizo de invocación')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(5,'2022-12-07 05:00:00.000',13,'Morsa glacial')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(6,'2022-12-05 03:00:00.000',20,'Pangolín excavador')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(7,'2022-12-06 08:00:00.000',12,'Lagarto venenoso')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(8,'2022-12-02 02:00:00.000',19,'Cambios en los Cuarteles')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(9,'2022-12-06 08:00:00.000',11,'Fénix')
go
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(1,'2022-12-07 05:00:00.000',16,'Nuevo niveles de defensas y edificios')
go
UPDATE  PaseBatalla Set Beneficios = 'Balance del juego' WHERE IdPaseBatalla  = '9'
Delete from  PaseBatalla where IdPaseBatalla  ='7'
Select * from  PaseBatalla

--Tabla pedido
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Marisol2804',9,4,1,'2022-12-07 05:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Brandon1812',6,2,9,'2022-12-05 03:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Evelin0115',10,12,3,'2022-12-02 02:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Pablo1017',6,3,1,'2022-12-06 08:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Yahir0923',9,11,2,'2022-12-07 05:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Gilberto1289',11,6,3,'2022-12-05 03:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Raquel2315',7,2,12,'2022-12-06 08:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Marcos0630',15,5,14,'2022-12-02 02:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Dany0105',20,13,8,'2022-12-06 08:00:00.000');
go
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Oscar1202',12,5,10,'2022-12-07 05:00:00.000');
go
UPDATE Pedido Set NombreJugador ='Carlos4576' WHERE IdPedido = '5'
Delete from  Pedido where IdPedido ='7'
Select * from Pedido
--Tabla Rango
Insert Into Rango(Nombre)values('Lider')
go
Insert Into Rango(Nombre)values('Colider Principal')
go
Insert Into Rango(Nombre)values('Colider Secundario')
go
Insert Into Rango(Nombre)values('Veterano principal')
go
Insert Into Rango(Nombre)values('Segundo Veterano')
go
Insert Into Rango(Nombre)values('Tercer Veterano')
go
Insert Into Rango(Nombre)values('Primer miembro')
go
Insert Into Rango(Nombre)values('Segundo miembro')
go
Insert Into Rango(Nombre)values('Tercer miembro')
go
Insert Into Rango(Nombre)values('Cuarto miembro')
go
UPDATE Rango Set Nombre='Miembro Principal' WHERE IdRango = '10'
Delete from  Rango where IdRango ='7'
Select * from Rango
--Tabla recompensa
Insert Into Recompensa(Nombre,Requerimiento)values('Asolamiento de talleres, ','Destruye 5Xtalleresde costructor en enfretamiento')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Mil cañones por banda, ','Destruye 40x cañon en batallas multijugador')
go
Insert Into Recompensa(Nombre,Requerimiento)values('As de asaltos, ','Realiza 5 asaltos a la capital')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Racha ganadora, ','Gana 3 batallas multijugadores seguidas')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Curación magica, ','Gana 8 batallas usando hechizos')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Victoria calcinada ','Gana 8 batallas usando dragones')
go
Insert Into Recompensa(Nombre,Requerimiento)values('que ardan los cañones','Destruye 10x mortero multiples')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Jugada estelar','Consigue el bonus 4 veces seguidas')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Racha ganadora, ','Gana 3 batallas multijugadores seguidas')
go
Insert Into Recompensa(Nombre,Requerimiento)values('Curación magica, ','Gana 8 batallas usando hechizos')
go
UPDATE Recompensa Set Nombre='Full bonus' WHERE IdRecompensa = '8'
Delete from  Recompensa where IdRecompensa ='10'
Select * from Recompensa
--Tabla Temporada
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (1,'Enero','2022-01-01 00:00:00.000','2022-01-31 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (1,'Enero','2022-01-01 00:00:00.000','2022-01-31 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (2,'Febrero','2022-02-01 00:00:00.000','2022-02-28 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (3,'Marzo','2022-03-01 00:00:00.000','2022-03-31 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (4,'Abril','2022-04-01 00:00:00.000','2022-04-30 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (5,'Mayo','2022-05-01 00:00:00.000','2022-05-31 12:59:59.000',1)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (6,'Junio','2022-06-01 00:00:00.000','2022-06-30 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (7,'Julio','2022-07-01 00:00:00.000','2022-07-31 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (8,'Agosto','2022-08-01 00:00:00.000','2022-08-31 12:59:59.000',0)
go
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (9,'Septiembre','2022-09-01 00:00:00.000','2022-09-30 11:59:59.000',0)
go
UPDATE Temporada Set Nombre='Diciembre' WHERE IdTemporada = '6'
Delete from  Temporada where IdTemporada ='2'
Select * from Temporada

--Tabla de Tesoreria 
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',-5000,'Almacen de oro',80000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',20000,'Almacen de elixir',20000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',-5000,'Almacen de oro',80000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',20000,'Almacen de elixir',20000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',10000,'Almacen de oro',80000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',630000,'Almacen de elixir',20000000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000)
go
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000)
go
UPDATE Tesoreria Set NombreRecurso='Elixir' WHERE IdTesoreria = '10'
Delete from  Tesoreria where IdTesoreria ='6'
Select * from Tesoreria

--Tabla Tienda
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('2500000 de elixer', 'negro',25,1)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Posima de entrenamiento', 'oro ',10,2)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de llucha', 'elixir',120,1)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de construccion', 'dinero',120,1)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Estatua de combatientes', 'negro',250,2)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('2500000 de elixer', 'negro',25,2)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Posima de entrenamiento', 'oro ',10,2)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de llucha', 'elixir',120,1)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de construccion', 'dinero',120,1)
go
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Estatua de combatientes', 'negro',25,2)
go
UPDATE Tienda Set Recurso='Elixir' WHERE IdTienda = '10'
Delete from  Tienda where IdTienda ='6'
Select * from Tienda

--Tabla Tropa
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Barbaro',3,14,65)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Arquera',7,25,48)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Golem',3,45,5700)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Valquiria',3,119,950)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Esbirro',2,41,63)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Bruja',3,140,400)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Sabueso de lava',2,12,6500)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Lanzarrocas',2,70,350)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Rompemuros',1,6,20)
go
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Dragon',5,240,3100)
go
UPDATE Tropa Set Nombre='Curandera' WHERE IdTropa  = '6'
Delete from  Tropa where IdTropa  ='9'
Select * from Tropa 

--Tabla Tutorial
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Mecánica del juego','2022-09-01 00:05:00.000','Explica lo basico del juego')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('La Aldea','2022-09-01 00:03:00.000','Explica lo basico de la aldea')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('El Castillo','2022-09-01 00:03:00.000','Funciones del castillo')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Tropas','2022-09-01 00:03:00.000','Uso de las tropas')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Copas','2022-09-01 00:03:00.000','como se optienen las copas')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Edificios','2022-09-01 00:03:00.000','como son los edificios')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Recursos','2022-09-01 00:03:00.000','como son los edificios')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Ejército','2022-09-01 00:03:00.000','como funciona el ejercito')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Estrategias','2022-09-01 00:03:00.000','para mejorar tus partidas')
go
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Tips','2022-09-01 00:03:00.000','para mejorar la aldea')
go
UPDATE Tutorial Set Nombre='tips aldea' WHERE IdTutorial  = '10'
Delete from  Tutorial where IdTutorial  ='9'
Select * from Tutorial

--Llaves foraneas---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Tabla Asalto 
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(3,'outOFservice','Campamento de barbaros',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(7,'Bangladesh','Cima de la capital oscura',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Dragon King','Casa de aldeanos',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto,Estatus)values(6,'Freestyle CWL','Penasco de dragones',3,'2022-09-01 00:01:30.000',0)
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto,Estatus)values(5,'ESC e-sports','Cantera de golems',2,'2022-09-01 00:01:30.000',0)
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(3,'outOFservice','Campamento de barbaros',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(7,'Bangladesh','Cima de la capital oscura',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Dragon King','Casa de aldeanos',1,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Freestyle CWL','Penasco de dragones',3,'2022-09-01 00:01:30.000')
go
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'ESC e-sports','Cantera de golems',2,'2022-09-01 00:01:30.000')
go
UPDATE Asalto Set ClanRival='casino lao caiz' WHERE IdAsalto = '10'
Delete from  Asalto where IdAsalto  ='1'
Select * from Asalto
--Ayuntamiento constructor
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(7,1,3,'Lugar posima entrenamiento')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(3,9,2,'Lugar del libro de construccion')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(8,5,4,'Lugar del libro universal')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(5,7,6,'Lugar de posima de recurso')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(9,4,1,'Lugar del libro de lucha')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(7,1,3,'Lugar posima entrenamiento')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(3,9,2,'Lugar del libro de construccion')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(8,5,4,'Lugar del libro universal')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(5,7,6,'Lugar de posima de recurso')
go
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(9,4,1,'Lugar del libro de lucha')
go
UPDATE AyuntamientoBaseConstructor set CanitdadObjetosMagicos ='2' WHERE IdAyuntamientoBaseConstructor = '10'
UPDATE AyuntamientoBaseConstructor set Descripcion ='Lugar del libro de construccion' WHERE IdAyuntamientoBaseConstructor = '10'
Delete from  AyuntamientoBaseConstructor where IdAyuntamientoBaseConstructor  ='1'
Select * from AyuntamientoBaseConstructor

--Tabla clam
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(1,2,'outOFservice','famili,lost,sneh','Solo Invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(2,9,'Bangladesh','clan,vip','Solo invitacion',1000)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(3,8,'Dragon King','welcome to persian gulf','Solo invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(4,7,'Freestyle CWL','Family:Freestyle CWL','Solo invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(5,6,'ESC e-sports','december offer coming soon','libre',1000)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(6,5,'outOFservice','famili,lost,sneh','Solo Invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(7,4,'Bangladesh','clan,vip','Solo invitacion',1000)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(8,3,'Dragon King','welcome to persian gulf','Solo invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(9,2,'casino lao caiz','Family:casino lao caiz','Solo invitacion',0)
go
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(10,1,'Exalt might','december offer coming soon','libre',1000)
go
UPDATE Clan Set Nombre='Bushido' WHERE IdClan= '10'
Delete from  Clan where IdClan  ='1'
Select * from Clan    

--Tabla CLAN DONACION
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(5,6)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(8,4)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(3,4)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(9,3)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(2,5)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(4,8)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(6,9)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(10,2)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(4,10)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(5,4)
go
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(3,3)
go
UPDATE ClanDonacion Set IdClan='4' WHERE IdClanDonacion= '10'
Delete from  ClanDonacion where IdClanDonacion  ='1'
Select * from ClanDonacion

--Tabla clanjuegoclan
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(5,8)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(8,4)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,4)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(9,3)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,5)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,8)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,9)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(10,2)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,10)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(5,4)
go
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,3)
go
UPDATE ClanJuegoClan Set IdClan='4' WHERE IdClanJuegoClan= '10'
Delete from  ClanJuegoClan where IdClanJuegoClan  ='1'
Select * from ClanJuegoClan

--Tabla clanOfertaSemanal
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(5,8)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(8,5)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,8)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(9,3)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,5)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(9,8)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(4,9)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(10,2)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(4,2)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(5,3)
go
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,3)
go
UPDATE ClanJuegoClan Set IdClan='4' WHERE IdClanJuegoClan= '10'
Delete from  ClanJuegoClan where IdClanJuegoClan  ='1'
Select * from ClanJuegoClan

--Tabla ClanPedido
Insert Into ClanPedido(IdClan,IdPedido)VALUES(5,8)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(8,5)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,8)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(9,3)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,5)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(9,8)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(4,9)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(10,2)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(4,2)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(5,3)
go
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,3)
go
UPDATE ClanPedido Set IdClan='4' WHERE IdClanPedido= '10'
Delete from  ClanPedido where IdClanPedido  ='1'
Select * from ClanPedido

--Tabla jugador
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(5,3,3,6,'Marisol2804','Marisol','Ramos','Reyes','Marisol@gmail.com','123')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(4,6,7,9,'Brandon1812','Brandon','Lugo','Costilla','Brandon@gmail.com','456')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(5,8,8,6,'Evelin0115','Evelin','Barrera','Torres','Evelin@gmail.com','789')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(9,3,4,7,'Pablo1017','Pablo','Ramirez','Ortiz','Pablo@gmail.com','321')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(1,3,8,9,'Yahir0923','Yahir','Diaz','Martinez','Yahir@gmail.com','654')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(7,3,3,7,'Gilberto1289','Gilberto','Treviño','Borrego','Gilbert@gmail.com','987')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(8,3,7,8,'Raquel2315','Raquel','Maya','Martinez','Raquel@gmail.com','159')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(9,3,4,5,'Dany0105','Dany','Ramos','Reyes','Dany@gmail.com','357')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(10,6,6,3,'Oscar1202','Oscar','Cortes','Morales','Oscar@gmail.com','357')
go
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(3,3,6,7,'Karen5623','Karen','Robledo','Lugo','Karen@gmail.com','258')
go
UPDATE Jugador Set IdClan='4' WHERE IdJugador= '10'
Delete from  Jugador where IdJugador  ='1'
Select * from Jugador
--Tabla JugadorLigaJugador
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(41,8)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(12,5)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(18,8)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(22,3)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(23,5)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(29,8)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(33,9)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(35,2)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(36,2)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(38,3)
go
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(39,3)
go
UPDATE JugadorLigaJugador Set IdLigaJugador='4' WHERE IdJugadorLigaJugador= '10'
Delete from  JugadorLigaJugador where IdJugadorLigaJugador  ='1'
Select * from JugadorLigaJugador
--Tabla JugadorModoJuego
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(41,8)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(12,5)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(18,8)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(22,3)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(23,5)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(29,8)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(33,9)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(35,2)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(36,2)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(38,3)
go
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(39,3)
go
UPDATE JugadorModoJuego Set IdModoJuego='4' WHERE IdJugadorModoJuego= '10'
Delete from  JugadorModoJuego where IdJugadorModoJuego  ='1'
Select * from JugadorModoJuego

--Tabla JugadorRango
Insert Into JugadorRango(IdJugador,IdRango)VALUES(41,8)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(12,5)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(18,8)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(22,3)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(23,5)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(29,8)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(33,9)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(35,2)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(36,2)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(38,3)
go
Insert Into JugadorRango(IdJugador,IdRango)VALUES(39,3)
go
UPDATE JugadorRango Set IdJugador='4' WHERE IdJugadorRango= '10'
Delete from  JugadorRango where IdJugadorRango  ='3'
Select * from JugadorRango
--Tabla JugadorTemporada
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(41,8)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(12,5)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(18,8)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(22,3)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(23,4)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(29,2)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(33,7)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(35,8)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(36,2)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(38,3)
go
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(39,3)
go
UPDATE JugadorTemporada Set IdJugador='4' WHERE IdJugadorTemporada= '10'
Delete from  JugadorTemporada where IdJugadorTemporada ='3'
Select * from JugadorTemporada

--Tabla JugadorTienda
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(41,8)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(12,5)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(18,8)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(22,3)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(23,4)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(29,2)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(33,7)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(35,8)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(36,2)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(38,3)
go
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(39,3)
go
UPDATE JugadorTienda Set IdJugador='38' WHERE IdJugadorTienda= '10'
Delete from  JugadorTienda where IdJugadorTienda='3'
Select * from JugadorTienda


--Tabla JugadorTutorial
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(41,8)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(12,5)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(18,8)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(22,3)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(23,4)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(29,2)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(33,7)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(35,8)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(36,2)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(38,3)
go
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(39,3)
go
UPDATE JugadorTutorial Set IdJugador='35' WHERE IdJugadorTutorial= '10'
Delete from  JugadorTutorial where IdJugadorTutorial='3'
Select * from JugadorTutorial

--Tabla LigaJugadorRecompensa
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(1,3)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,5)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(7,1)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(1,6)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(2,7)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,2)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(3,9)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(5,8)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(6,2)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(8,4)
go
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,3)
go
UPDATE LigaJugadorRecompensa Set IdLigaJugador='7' WHERE IdLigaJugadorRecompensa= '10'
Delete from  LigaJugadorRecompensa where IdLigaJugadorRecompensa='3'
Select * from LigaJugadorRecompensa

--Tabla paisaje
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(2,'Clásico','Un bosque. Una cascada y unos acantilados se sitúan en la parte trasera.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(3,'Clásico (Otoño)','El bosque clásico pero los árboles ahora representan la temporada de otoño.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(4,'Clásico (Invierno)','El mismo bosque que en otoño pero con varios detalles de hielo y nieve mezclados.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(4,'Creaciones Mecánicas','Un bosque de pinos con estructuras y minas que rodean su pueblo.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(5,'Creaciones Mecánicas','Un área nevada con una cueva nevada en un lado.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(6,'Clásico','Un bosque. Una cascada y unos acantilados se sitúan en la parte trasera.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(7,'Clásico (Otoño)','El bosque clásico pero los árboles ahora representan la temporada de otoño.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(8,'Clásico (Invierno)','El mismo bosque que en otoño pero con varios detalles de hielo y nieve mezclados.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(9,'Creaciones Mecánicas','Un bosque de pinos con estructuras y minas que rodean su pueblo.')
go
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(6,'Creaciones Mecánicas','Un área nevada con una cueva nevada en un lado.')
go
UPDATE Paisaje Set Nombre='La Montaña del Cerdo' WHERE IdPaisaje= '10'
Delete from  Paisaje where IdPaisaje='3'
Select * from Paisaje

--Tabla RangoMedalla
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(1,3)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,4)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(7,1)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(1,6)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(2,7)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,2)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(3,9)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(5,8)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(6,2)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(8,4)
go
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,3)
go
UPDATE RangoMedalla Set IdRango='7' WHERE IdRangoMedalla= '10'
Delete from  RangoMedalla where IdRangoMedalla='3'
Select * from RangoMedalla
Select * from AyuntamientoBaseConstructor
--Tabla Heroe
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(2,'Reina Arquera',20000,500,0,80)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(3,'Rey Barbaro',30000,600,100,90)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(5,'MaquinaBelica',15000,500,50,60)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(6,'GranCentinela',60000,200,50,60)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(7,'Luchador real',50000,400,750,90)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(8,'Reina Arquera',20000,500,0,80)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(10,'Rey Barbaro',30000,600,100,90)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(11,'MaquinaBelica',15000,500,50,60)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(12,'GranCentinela',60000,200,50,80)
go
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(7,'Luchador real',50000,400,750,90)
go
UPDATE Heroe Set Vida='70000' WHERE IdHeroe= '10'
Delete from  Heroe where IdHeroe='3'
Select * from Heroe
--Marisol2804
--Brandon1812
--Evelin0115
--Pablo1017
--Yahir0923
--Gilberto1289
--Raquel2315
--Marcos0630
--Dany0105
--Oscar1202