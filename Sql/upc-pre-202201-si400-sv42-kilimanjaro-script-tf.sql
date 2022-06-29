-- database
-- database: KILIMANJARODB
CREATE DATABASE KILIMANJARODB
USE KILIMANJARODB

-- tables
-- Table: Cliente
CREATE TABLE Cliente (
    CCliente char(4)  NOT NULL,
    NUsercliente varchar(15)  NOT NULL,
    NPassword varchar(20)  NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY  (CCliente)
);

insert into Cliente
values ('CU11','LeonardoA','Leo20123'),
       ('CU12','JoseL','Jose82672'),
       ('CU13','CarlosR','Carlos12732'),
       ('CU14','PedroR','Pedro12367'),
       ('CU15','PabloM','Pablo12372'),
       ('CU16','AngelL','Angel12736'),
       ('CU17','MatiasR','Matias23612'),
       ('CU18','MariaC','Maria12372'),
       ('CU19','AlexR','Alex72832'),
       ('CU20','JuanP','Juan12731'),
       ('CU21','MonicaM','Monica37126'),
       ('CU22','ArianaG','Ariana73613'),
       ('CU23','ElvisR','Elvis72748'),
       ('CU24','AntonellaB','Antonella13123'),
       ('CU25','MayahH','Maya 32134'),
       ('CU26','ChirsthianG','Cristhian97864'),
       ('CU27','AlvaroA','Alvaro53457'),
       ('CU28','KarinaC','Karina74563'),
       ('CU29','GianellaA','Gianella52349'),
       ('CU30','AlexandraB','Alexandra37453')

-- Table: Compra
CREATE TABLE Compra (
    CCompra char(4)  NOT NULL,
    CProveedor char(4)  NOT NULL,
    CEmpleadosupervisor char(4)  NOT NULL,
    DEntrega date  NOT NULL,
    CONSTRAINT Compra_pk PRIMARY KEY  (CCompra)
);

insert into Compra
values ('CA01','CV01','CU03','2020-02-18'),
       ('CA02','CV02','CU03','2020-02-27'),
       ('CA03','CV03','CU03','2021-02-20'),
       ('CA04','CV04','CU03','2021-02-18'),
       ('CA05','CV05','CU03','2021-03-19'),
       ('CA06','CV06','CU03','2022-03-20'),
       ('CA07','CV07','CU03','2022-03-21'),
       ('CA08','CV08','CU03','2022-03-22'),
       ('CA09','CV09','CU03','2022-03-23'),
       ('CA10','CV10','CU03','2022-03-24'),
       ('CA11','CV11','CU03','2022-03-25'),
       ('CA12','CV12','CU03','2022-03-26'),
       ('CA13','CV13','CU03','2022-03-27'),
       ('CA14','CV14','CU03','2022-03-28'),
       ('CA15','CV15','CU03','2022-03-01'),
       ('CA16','CV16','CU03','2022-03-02'),
       ('CA17','CV17','CU03','2022-03-03'),
       ('CA18','CV18','CU03','2022-03-04'),
       ('CA19','CV19','CU03','2022-03-05'),
       ('CA20','CV20','CU03','2022-03-06')

-- Table: Contrato
CREATE TABLE Contrato (
    CContrato char(4)  NOT NULL,
    DInicio date  NOT NULL,
    DFin date  NOT NULL,
    MSueldo money  NOT NULL,
    CHorario char(4)  NOT NULL,
    CEmpleado char(4)  NOT NULL,
    CEmpleadosupervisor char(4),
    MPagoHoraExtra money,
    CONSTRAINT Contrato_pk PRIMARY KEY  (CContrato)
);

insert into Contrato
values 
('CT01','2022-01-01','2022-12-31','1.200,00','CH01','CU01',NULL,'100,00'),
('CT02','2022-01-01','2022-12-31','1.000,00','CH02','CU02','CU04','200,00'),
('CT03','2022-01-01','2022-12-31','2.500,00','CH01','CU03',NULL,NULL),
('CT04','2022-01-01','2022-12-31','1.500,00','CH01','CU04',NULL,NULL),
('CT05','2022-01-01','2022-12-31','1.000,00','CH02','CU05','CU01','100,00'),
('CT06','2022-01-01','2022-12-31','1.000,00','CH01','CU06','CU04',NULL),
('CT07','2022-01-01','2022-12-31','1.000,00','CH02','CU07','CU01','200,00'),
('CT08','2022-01-01','2022-12-31','1.000,00','CH01','CU08','CU04','100,00'),
('CT09','2022-01-01','2022-12-31','1.000,00','CH02','CU09','CU04',NULL),
('CT10','2022-01-01','2022-12-31','1.000,00','CH02','CU10','CU01','100,00'),
('CT11','2020-01-01','2020-12-31','1.200,00','CH01','CU01',NULL,'200,00'),
('CT12','2020-01-01','2020-12-31','1.000,00','CH02','CU02','CU04','100,00'),
('CT13','2020-01-01','2020-12-31','2.500,00','CH01','CU03',NULL,NULL),
('CT14','2020-01-01','2020-12-31','1.500,00','CH01','CU04',NULL,'100,00'),
('CT15','2020-01-01','2020-12-31','1.000,00','CH02','CU05','CU01',NULL),
('CT16','2020-01-01','2020-12-31','1.000,00','CH01','CU06','CU04','100,00'),
('CT17','2020-01-01','2020-12-31','1.000,00','CH02','CU07','CU01','200,00'),
('CT18','2020-01-01','2020-12-31','1.000,00','CH01','CU08','CU04','100,00'),
('CT19','2020-01-01','2020-12-31','1.000,00','CH02','CU09','CU04',NULL),
('CT20','2020-01-01','2020-12-31','1.000,00','CH02','CU10','CU01','100,00'),
('CT21','2021-01-01','2021-12-31','1.200,00','CH01','CU01',NULL,NULL),
('CT22','2021-01-01','2021-12-31','1.000,00','CH02','CU02','CU04','100,00'),
('CT23','2021-01-01','2021-12-31','2.500,00','CH01','CU03',NULL,'200,00'),
('CT24','2021-01-01','2021-12-31','1.500,00','CH01','CU04',NULL,'100,00'),
('CT25','2021-01-01','2021-12-31','1.000,00','CH02','CU05','CU01',NULL),
('CT26','2021-01-01','2021-12-31','1.000,00','CH01','CU06','CU04','200,00'),
('CT27','2021-01-01','2021-12-31','1.000,00','CH02','CU07','CU01','100,00'),
('CT28','2021-01-01','2021-12-31','1.000,00','CH01','CU08','CU04',NULL),
('CT29','2021-01-01','2021-12-31','1.000,00','CH02','CU09','CU04','200,00'),
('CT30','2021-01-01','2021-12-31','1.000,00','CH02','CU10','CU01','100,00')


-- Table: Delivery
CREATE TABLE Delivery (
    CDelivery char(4)  NOT NULL,
    CEmpleado char(4)  NOT NULL,
    CPedido char(4)  NOT NULL,
    CRuta char(5)  NOT NULL,
    CONSTRAINT Delivery_pk PRIMARY KEY  (CDelivery)
);

insert into Delivery
values 
('CD01','CU01','PP01','CRu1'),
('CD02','CU02','PP02','CRu2'),
('CD03','CU03','PP03','CRu3'),
('CD04','CU04','PP04','CRu4'),
('CD05','CU05','PP05','CRu5'),
('CD06','CU06','PP06','CRu6'),
('CD07','CU07','PP07','CRu7'),
('CD08','CU08','PP08','CRu8'),
('CD09','CU09','PP09','CRu9'),
('CD10','CU10','PP10','CRu10')

-- Table: DeliveryEstado
CREATE TABLE DeliveryEstado (
    CDelivery char(4)  NOT NULL,
    CEstado char(4)  NOT NULL,
    HDeinicio time  NOT NULL,
    HDefin time  NOT NULL,
    CONSTRAINT DeliveryEstado_pk PRIMARY KEY  (CDelivery,CEstado)
);

insert into DeliveryEstado
values ('DE01','DE01','13:00', '14:00'),
    ('DE02','DE03','12:00', '13:00'),
    ('DE03','DE05','10:00', '11:00'),
    ('DE04','DE01','9:00', '10:00'),
    ('DE05','DE07','7:00', '8:00'),
    ('DE06','DE06','12:00', '13:00'),
    ('DE07','DE02','10:00', '11:00')

-- Table: DetalleCompra
CREATE TABLE DetalleCompra (
    CCompra char(4)  NOT NULL,
    CIngrediente char(4)  NOT NULL,
    QIngredientecompra int  NOT NULL,
    CONSTRAINT DetalleCompra_pk PRIMARY KEY  (CIngrediente,CCompra)
);

insert into DetalleCompra
values ('CA01','CI01','50'),
('CA02','CI04','10'),
('CA02','CI10','34'),
('CA03','CI02','12'),
('CA03','CI05','42'),
('CA03','CI09','54'),
('CA03','CI16','17'),
('CA04','CI03','24'),
('CA04','CI06','11'),
('CA04','CI07','23'),
('CA04','CI08','15'),
('CA04','CI12','12'),
('CA04','CI14','10'),
('CA05','CI11','6 '),
('CA06','CI13','23'),
('CA07','CI17','21'),
('CA08','CI15','26')

-- Table: Empleado
CREATE TABLE Empleado (
    CEmpleado char(4)  NOT NULL,
    CRol char(4)  NOT NULL,
    CEmpleadoSupervisor char(4)  NULL,
    CONSTRAINT Empleado_pk PRIMARY KEY  (CEmpleado)
);

insert into Empleado
values ('CU01','CR02', 'CU03'),
       ('CU02','CR03', 'CU04'),
       ('CU03','CR01', NULL),
       ('CU04','CR04', 'CU03'),
       ('CU05','CR02', 'CU01'),
       ('CU06','CR03', 'CU04'),
       ('CU07','CR02', 'CU01'),
       ('CU08','CR03', 'CU04'),
       ('CU09','CR03', 'CU04'),
       ('CU10','CR02', 'CU01')

-- Table: Estado
CREATE TABLE Estado (
    Cestado char(4)  NOT NULL,
    Nestado varchar(20)  NOT NULL,
    CONSTRAINT Estado_pk PRIMARY KEY  (Cestado)
);

insert into Estado 
values ('CE01','Preparandose'),
('CE02','En Espera'),
('CE03','Partiendo'),
('CE05','Recogido'),
('CE06','Entregado'),
('CE07','Cancelado')

-- Table: Horario
CREATE TABLE Horario (
    CHorario char(4)  NOT NULL,
    NHorario varchar(15)  NOT NULL,
    HInicio time  NOT NULL,
    HFin time  NOT NULL,
    CONSTRAINT Horario_pk PRIMARY KEY  (CHorario)
);

insert into Horario
values ('CH01','Manana','6:00:00','2:00:00'),
       ('CH02','Tarde','2:00:00','11:00:00')

-- Table: Ingrediente
CREATE TABLE Ingrediente (
    CIngrediente char(4)  NOT NULL,
    NIngredientes varchar(25)  NOT NULL,
    TDescripcioningrediente varchar(100)  NOT NULL,
    CUnidad char(5)  NOT NULL,
    QUnidad int  NOT NULL,
    CONSTRAINT Ingrediente_pk PRIMARY KEY  (CIngrediente)
);

SET ANSI_WARNINGS OFF;
	insert into Ingrediente
values ('CI01','Pan','Alimento básico que se elabora con una mezcla de harina, generalmente de trigo, agua, sal y levadura, que se amasa y se cuece en un horno en piezas de distintas formas y tamaños; su sabor, color y textura pueden variar según el tipo de harina empleado y los ingredientes secundarios añadidos, como leche, mantequilla, frutos secos, etc.','CND02',96),
	   ('CI02','Tocino','El tocino es un tipo de carne curada que tradicionalmente viene de la parte posterior del vientre, o de los lados de un cerdo, por lo general contiene poca carne y más acumulo graso que se deposita en la porción subcutánea de la piel del cerdo.','CND01',112),
	   ('CI03','Tomate','Fruto de esta planta, comestible, de piel roja, verde o amarilla, lisa y brillante, pulpa muy jugosa y semillas amarillas y planas.','CND01',119),
	   ('CI04','Azucar','Sustancia cristalina, generalmente blanca, muy soluble en agua y de sabor muy dulce, que se encuentra en el jugo de muchas plantas y se extrae especialmente de la caña dulce y de la remolacha; se emplea en alimentación como edulcorante nutritivo y generalmente se presenta en polvo de cristales pequeños.','CND01',67),
	   ('CI05','Huevo','Cuerpo redondo u ovalado, con una membrana o cáscara exterior, que ponen las hembras de algunos animales y que contiene en su interior el embrión de un nuevo ser y el alimento necesario para que crezca.','CND01',97),
	   ('CI06','Cebolla','La cebolla es el bulbo subterráneo y comestible que crece en la planta del mismo nombre.','CND01',101),
	   ('CI07','Limón','Limón es un nombre corriente de tres frutas cítricas fragantes y de sabor ácido, utilizadas principalmente en el sector alimentario.','CND01',113),
	   ('CI08','Lechuga','Lactuca sativa, conocida comúnmente como lechuga, es una planta herbácea propia de las regiones semitempladas que se cultiva como alimento. Debido a las muchas variedades que existen y a su cultivo cada vez mayor en invernaderos, se puede consumir durante todo el año.','CND01',86),
	   ('CI09','Pollo','Pollo es el nombre que reciben las crías de las gallinas y de otras aves. ... Este animal, domesticado, suele ser criado para aprovechar su carne y los huevos que ponen las gallinas. La carne de pollo está considerada como un alimento básico en la dieta humana.','CND01',78),
	   ('CI10','Queso cheddar','El cheddar es un queso pálido de sabor agrio, originalmente producido en la villa de Cheddar, en Somerset, Inglaterra (de ahí su nombre)','CND01',103),
	   ('CI11','Mayonesa','La mayonesa es un alimento de origen animal, procesado e industrializado. Se elabora a partir del batido de huevo entero y aceite vegetal. Pertenece al grupo de las grasas (saturadas, insaturadas y colesterol), ya que es el nutriente que más prevalece.','CND02',93),
	   ('CI12','Fresa','La fresa es un fruto de color rojo brillante, suculento y fragante que se obtiene de la planta que recibe su mismo nombre. En Occidente es considerada la "reina de las frutas". ... La fresa es un fruto de color rojo brillante, suculento y fragante que se obtiene de la planta que recibe su mismo nombre.','CND01',113),
	   ('CI13','Sal','Sustancia cristalizada, friable e inodora, de sabor punzante, empleada como condimento y como agente de conservación. Compuesta por cloruro de sodio en estado puro, la sal es muy abundante en la naturaleza.','CND01',67),
	   ('CI14','Manzana','Fruto del manzano, comestible, de forma redondeada y algo hundida por los extremos, piel fina, de color verde, amarillo o rojo, carne blanca y jugosa, de sabor dulce o ácido, y semillas en forma de pepitas encerradas en una cápsula de cinco divisiones.','CND01',86),
	   ('CI15','Agua','El agua es una sustancia que se compone por dos átomos de hidrógeno y un átomo de oxígeno (H2O) y se puede encontrar en estado sólido (hielo), gaseoso (vapor) y líquido (agua). Las propiedades físicas y químicas del agua son muy importantes para la supervivencia de los ecosistemas.','CND03',93),
	   ('CI16','Jamón','El jamón o jamón curado es un producto cárnico elaborado con la extremidad posterior del cerdo, sometida al proceso de salazón y posterior curado-maduración. En función de la raza y de la alimentación que reciben los animales, podemos clasificar el jamón como blanco curado o ibérico.','CND01',61),
	   ('CI17','Carne molida','La carne picada o carne molida ​ es una preparación de la carne con objetivos culinarios, para la cual se desmenuzan y se cortan finamente los músculos, grasas y nervios mediante máquina de picar carne, cuchillo, etc.','CND01',30),
	   ('CI18','Palta','La palta es un tipo de fruta tropical autóctona de Guatemala y México, caracterizada por su alto contenido de lípidos.','CND01',30),
	   ('CI19','Queso edam','El Edam es un queso semiduro, de forma esférica, ligeramente achatada en las superficies superior e inferior, caso en el que la corteza tendrá consistencia dura.','CND01',30),
	   ('CI20','Pimiento','El pimiento es una hortaliza de forma, tamaño y color variable.','CND01',30),
	   ('CI21','Ají','El chile, ají o guindilla, es una variedad de pimiento picante.','CND01',50)
SET ANSI_WARNINGS ON;


-- Table: IngredientePlatillo
CREATE TABLE IngredientePlatillo (
    CIngrediente char(4)  NOT NULL,
    CPlatillo char(4)  NOT NULL,
    QIngredientesplatillo int  NOT NULL,
    CONSTRAINT IngredientePlatillo_pk PRIMARY KEY  (CIngrediente,CPlatillo)
);

SET ANSI_WARNINGS OFF;
insert into IngredientePlatillo
values ('CI01','CL01','1'),
('CI04','CL02','3'),
('CI10','CL03','1'),
('CI02','CL04','1'),
('CI05','CL05','1'),
('CI09','CL06','3'),
('CI16','CL07','4'),
('CI03','CL08','1'),
('CI06','CL09','2'),
('CI07','CL10','1'),
('CI08','CL11','1'),
('CI12','CL12','2'),
('CI14','CL13','1'),
('CI11','CL14','8'),
('CI13','CL15','1'),
('CI17','CL16','2'),
('CI15','CL17','5'),
('CI01','CL18','1'),
('CI04','CL19','2'),
('CI10','CL20','1'),
('CI02','CL21','1'),
('CI05','CL22','2'),
('CI09','CL23','1'),
('CI16','CL24','4'),
('CI03','CL25','1'),
('CI06','CL26','1'),
('CI07','CL27','2'),
('CI08','CL28','2')
SET ANSI_WARNINGS OFF;



-- Table: Paso
CREATE TABLE Paso (
    CPlatillo char(4)  NOT NULL,
    CPaso char(5)  NOT NULL,
    NPaso varchar(30)  NOT NULL,
    TDescripcionpaso varchar(50)  NOT NULL,
    QDuracion int  NOT NULL,
    CONSTRAINT Paso_pk PRIMARY KEY  (CPaso,CPlatillo)
);

SET ANSI_WARNINGS OFF;
insert into Paso
values ('CL05','CPS01','Pelar','Pelar la manzana','5'),
('CL01','CPS02','Freir','Freir los panes y carnes para el Sandwiches','10'),
('CL08','CPS03','Condimentar','Untar especias en la carne de la hamburguesa','9'),
('CL01','CPS04','Picar','Vegetales para la ensalada de los Sandwiches','6'),
('CL06','CPS05','Mezclar','Mezclar jugo de limon, manzana y gaseosa','4'),
('CL03','CPS06','Calentar','Calentar el queso y la masa en la sarten','10'),
('CL07','CPS07','Cortar','Cortar limon y licuarlo con pisco','8'),
('CL14','CPS08','Preparar mezcla','Mezclar queso caliente y palta','6'),
('CL04','CPS09','Remover','Remover todos los ingredientes en agua','5'),
('CL29','CPS10','Preparar','salsa	Preparar salsa QQB','9'),
('CL34','CPS11','Quitar','Quitar todas las pepas de los limones','8'),
('CL12','CPS12','Partir','Partir el pan en 4 triángulos','2'),
('CL37','CPS13','Licuar','Licuar la fruta','6'),
('CL27','CPS14','Dorar','Dorar usando un soplete','7'),
('CL02','CPS15','Preparar','los chips	Cortar y picar los ingredientes para chips','10'),
('CL15','CPS16','Limpiar','Limpiar el interior de los ajíes','6'),
('CL32','CPS17','Destapar','Destapa la botella y la sirve en un vaso','1'),
('CL25','CPS18','Deshilachar','Deshilachar el pollo','10'),
('CL38','CPS19','Reposar','Dejar reposar el té hasta q tenga color','3'),
('CL13','CPS20','Rellenar','Rellenar la masa con los otros ingredientes','10')
SET ANSI_WARNINGS ON;
-- Table: Pedido
CREATE TABLE Pedido (
    CPedido char(4)  NOT NULL,
    CTipopago char(5)  NOT NULL,
    CCliente char(4)  NOT NULL,
    DPedido date  NOT NULL,
    CDistrito varchar(30)  NOT NULL,
    HEntregaestimada time  NOT NULL,
    CONSTRAINT Pedido_pk PRIMARY KEY  (CPedido)
);

insert into Pedido
values ('PP01','TP01','CU11','2020-02-20','Jesus Maria','14:00'),
('PP02','TP02','CU12','2020-06-22','Miraflores','13:00'),
('PP03','TP03','CU13','2020-04-20','Surco','11:00'),
('PP04','TP04','CU14','2020-02-15','San Isidro','10:00'),
('PP05','TP05','CU15','2021-03-10','San Borja','8:00'),
('PP06','TP01','CU16','2021-05-07','Jesus Maria','13:00'),
('PP07','TP02','CU17','2021-02-06','San Miguel','11:00'),
('PP08','TP05','CU18','2021-06-29','Magdanela','10:00'),
('PP09','TP02','CU19','2021-07-28','Surco','14:00'),
('PP10','TP04','CU20','2022-05-25','Jesus Maria','13:00'),
('PP11','TP03','CU21','2022-01-21','San Borja','11:00'),
('PP12','TP02','CU22','2022-09-17','Miraflores','8:00'),
('PP13','TP05','CU23','2022-02-20','Jesus Maria','10:00')

-- Table: Platillo
CREATE TABLE Platillo (
    CPlatillo char(4)  NOT NULL,
    NPlatillo varchar(30)  NOT NULL,
    MPlatillo money  NOT NULL,
    CONSTRAINT Platillo_pk PRIMARY KEY  (CPlatillo)
);

SET ANSI_WARNINGS OFF;
insert into Platillo
values ('CL01 ','COMIXS CLUB SANDWICH','52,00'),
       ('CL02','QUADRAPPETIZER PLATTER','48.00'),
       ('CL03','INTERSTELLAR','6.00'),
       ('CL04','CHICHA','16.00'),
       ('CL05','MILKSHAKE PREMIUM','12.00'),
       ('CL06','SOUR APPLE LEMON SPLASHER','19.00'),
       ('CL07','PISCO SOUR','38.00'),
       ('CL08','COWBOY BURGER','33.00'),
       ('CL09','SOUTHWESTERN QUESADILLA','26.00'),
       ('CL10','BURGER CLUB SANDWICH','36.00'),
       ('CL11','BUFFALO GUACAMOLE','38.00'),
       ('CL12','TEXAN BURGER','34.00'),
       ('CL13','AMAZING','36.00'),
       ('CL14','AVOCADO CHEDDAR','32.00'),
       ('CL15','SOUTHWESTERN QUESADILLA SPICY','34.00'),
       ('CL16','CHICKEN CRISPY QUESADILLAS','30.00'),
       ('CL17','VEEGI QUESADILLA','35.00'),
       ('CL18','FAJITA QUESADILLA MIXTA','35.00'),
       ('CL19','QUESADILLA BURGER','36.00'),
       ('CL20','COMIXS QUESADILLA','46.00'),
       ('CL21','PHILLY CHEESE STEAK CLUB','36.00'),
       ('CL22','DOBLE BLT SANDWICH','28.00'),
       ('CL23','HAM AVOCADO SANDWICH','23.00'),
       ('CL24','MENU KIDS','30.00'),
       ('CL25','CHICKEN & CHEESE','34.00'),
       ('CL26','CHICKEN SNACK','30.00'),
       ('CL27','LANGOSTINOS CRISPY','35.00'),
       ('CL28','PASTA JAMBALAYA','58.00'),
       ('CL29','BBQ SAMPLER','52.00'),
       ('CL30','QUADRAPPETIZER PLATTER ESPECIAL','7.00'),
       ('CL31','GASEOSA PERSONAL','11.00'),
       ('CL32','CERVEZA','13.00'),
       ('CL33','CORONA','6.00'),
       ('CL34','LIMONADA','12.00'),
       ('CL35','LIME BERRY LIME','12.00'),
       ('CL36','PASSION CITRUS','12.00'),
       ('CL37','RASPBERRY BERRY SPLASHER','10.00'),
       ('CL38','COMIXS ICED TEA','15.00')
SET ANSI_WARNINGS ON;

-- Table: PlatillosdelPedido
CREATE TABLE PlatillosdelPedido (
    CPedido char(4)  NOT NULL,
    CPlatillo char(4)  NOT NULL,
    Descuentoplatillo float  NULL,
    QPlatillo int  NOT NULL,
    CONSTRAINT PlatillosdelPedido_pk PRIMARY KEY  (CPlatillo,CPedido)
);

insert into PlatillosdelPedido
values ('PP01','CL01','11','2'),
('PP02','CL02','12','1'),
('PP03','CL03','8','2'),
('PP04','CL30','5','3'),
('PP05','CL25','6','2'),
('PP06','CL26','9','1'),
('PP07','CL27','6','2'),
('PP08','CL28','7','3'),
('PP09','CL18','9','2'),
('PP10','CL19','4','1'),
('PP11','CL20','6','2'),
('PP12','CL21','4','3'),
('PP13','CL22','5','2')

-- Table: Proveedor
CREATE TABLE Proveedor (
    CProveedor char(4)  NOT NULL,
    NProveedor varchar(25)  NOT NULL,
    TRuc varchar(25)  NULL,
    TRazonsocial varchar(25)  NULL,
    CONSTRAINT Proveedor_pk PRIMARY KEY  (CProveedor)
);

insert into Proveedor
values ('CV01','Carlos',24380451327,'Pan Perú'),
       ('CV02','Juan',41578242327,'Gloria'),
       ('CV03','Pedro',43771657589,'San Fernando'),
       ('CV04','Rosa',36401881279,'Proagroperuanos'),
       ('CV05','Almendra',36701055858,'Bells'),
       ('CV06','Tomás',43677779785,'Emsal'),
       ('CV07','Pablo',31348698225,'Carnicentro'),
       ('CV08','Gilma',12884639482,'Sedapal'),
       ('CV09','Julio',99931158915,'Laive'),
       ('CV10','Patricio',24438763428,'La Ternerita'),
       ('CV11','Antonio',35296021835,'Nor Agro'),
       ('CV12','Anthony',28197330574,'Comercial Ludiben'),
       ('CV13','Pepe',92711223329,'Quesos Nesh'),
       ('CV14','Lucho',25921946845,'Oregon Foods'),
       ('CV15','Oracio',56343931956,'Norteño'),
       ('CV16','Joaquin',70830418137,'Costeño'),
       ('CV17','Samuel',51143605470,'Cimpo'),
       ('CV18','Brenda',54278984765,'Iprodesa'),
       ('CV19','Rosmery',14602059135,'Vega'),
       ('CV20','Irina',83444891401,'Schettino')

-- Table: ProveedorIngrediente
CREATE TABLE ProveedorIngrediente (
    CProveedor char(4)  NOT NULL,
    CIngrediente char(4)  NOT NULL,
    MPrecioingrediente money  NOT NULL,
    CONSTRAINT ProveedorIngrediente_pk PRIMARY KEY  (CProveedor,CIngrediente)
);

insert into ProveedorIngrediente
values ('CI01','CV01','0,15'),
('CI02','CV03','13,00'),
('CI03','CV04','3,50'),
('CI04','CV02','3,50'),
('CI05','CV03','4,00'),
('CI06','CV04','4,20'),
('CI07','CV04','3,80'),
('CI08','CV04','1,50'),
('CI09','CV03','10,20'),
('CI10','CV02','40,00'),
('CI11','CV05','13,50'),
('CI12','CV04','5,00'),
('CI13','CV06','1,20'),
('CI14','CV04','6,00'),
('CI15','CV08','6,00'),
('CI16','CV03','6,50'),
('CI17','CV07','13,00'),
('CI18','CV14','3,50'),
('CI19','CV13','40,00'),
('CI20','CV18','3,50'),
('CI21','CV20','3,50')

-- Table: Reserva
CREATE TABLE Reserva (
    CReserva char(5)  NOT NULL,
    CCliente char(4)  NOT NULL,
    DReserva date  NOT NULL,
    FAsistencia bit  NOT NULL,
    QPersonas int  NOT NULL,
    CONSTRAINT Reserva_pk PRIMARY KEY  (CReserva,CCliente)
);

insert into Reserva
values ('CRS01', 'CU11', '2022-02-27', '1', '1'),
    ('CRS02', 'CU12', '2022-02-18', '1', '3'),
    ('CRS03', 'CU13', '2022-02-23', '0', '2'),
    ('CRS04', 'CU18', '2022-02-18', '1', '5'),
    ('CRS05', 'CU18', '2022-02-22', '1', '2'),
    ('CRS06', 'CU19', '2022-02-23', '0', '4'),
    ('CRS07', 'CU20', '2022-02-18', '0', '2'),
    ('CRS08', 'CU14', '2022-02-23', '1', '3'),
    ('CRS09', 'CU15', '2022-02-23', '1', '3'),
    ('CRS10', 'CU16', '2022-02-27', '1', '4'),
    ('CRS11', 'CU19', '2022-02-28', '1', '3'),
    ('CRS12', 'CU20', '2022-02-23', '1', '5'),
    ('CRS13', 'CU13', '2022-02-27', '1', '1'),
    ('CRS14', 'CU14', '2022-02-28', '1', '2'),
    ('CRS15', 'CU23', '2022-03-01', '1', '3'),
    ('CRS16', 'CU24', '2022-03-02', '1', '3'),
    ('CRS17', 'CU25', '2022-03-03', '1', '4'),
    ('CRS18', 'CU12', '2022-03-04', '1', '4')

-- Table: Rol
CREATE TABLE Rol (
    CRol char(4)  NOT NULL,
    NRol varchar(15)  NOT NULL,
    CONSTRAINT Rol_pk PRIMARY KEY  (CRol)
);

insert into Rol
values ('CR01','Administrador'),
       ('CR02','Repartidor'),
       ('CR03','Cocinero'),
       ('CR04','Chef')

-- Table: Ruta
CREATE TABLE Ruta (
    CRuta char(5)  NOT NULL,
    NumLongitudinicio decimal(8,6)  NOT NULL,
    NumLatitudinicio decimal(8,6)  NOT NULL,
    NumLongitudfin decimal(8,6)  NOT NULL,
    NumLatitudfin decimal(8,6)  NOT NULL,
    CONSTRAINT Ruta_pk PRIMARY KEY  (CRuta)
);

insert into Ruta
values 
('CRu1','-12.111139','-76.988898','-12.112737','-77.013711'),
('CRu2','-12.111139','-76.988898','-12.104645','-76.964613'),
('CRu3','-12.111139','-76.988898','-12.114434','-76.987496'),
('CRu4','-12.111139','-76.988898','-12.109394','-76.993244'),
('CRu5','-12.111139','-76.988898','-12.114439','-76.991807'),
('CRu6','-12.111139','-76.988898','-12.107044','-76.98969'),
('CRu7','-12.111139','-76.988898','-12.112952','-76.990651'),
('CRu8','-12.111139','-76.988898','-12.109606','-76.984493'),
('CRu9','-12.111139','-76.988898','-12.111716','-76.981602'),
('CRu10','-12.111139','-76.988898','-12.122885','-76.985677')

-- Table: TipoPago
CREATE TABLE TipoPago (
    CTipopago char(5)  NOT NULL,
    NTipopago varchar(15)  NOT NULL,
    CONSTRAINT TipoPago_pk PRIMARY KEY  (CTipopago)
);

insert into TipoPago
values ('TP01', 'Efectivo'),
    ('TP02', 'Débito'),
    ('TP03', 'Transferencia'),
    ('TP04', 'Dólares'),
    ('TP05', 'Euros')

-- Table: Unidad
CREATE TABLE Unidad (
    CUnidad char(5)  NOT NULL,
    NUnidad varchar(15)  NOT NULL,
    CONSTRAINT Unidad_pk PRIMARY KEY  (CUnidad)
);

insert into Unidad
values ('CND01','Kilo'),
       ('CND02','Unidad'),
       ('CND03','Litro'),
       ('CND04','Gramo')

-- Table: Usuario
CREATE TABLE Usuario (
    CUsuario char(4)  NOT NULL,
    NNombre varchar(25)  NOT NULL,
    NApellido varchar(25)  NOT NULL,
    NumTelefono varchar(15)  NOT NULL,
    TCorreo varchar(50)  NOT NULL,
    TDireccion varchar(50)  NOT NULL,
    NDistrito varchar(30)  NOT NULL,
    CONSTRAINT Usuario_pk PRIMARY KEY  (CUsuario)
);

insert into Usuario
values('CU01','Adriana','Fernandez',956328152, 'AdrianaFernandez@gmail.com','Jr. Fray Luis de leon 314','San Borja'),
      ('CU02','Julio','Asto',990504632,'JulioAsto@gmail.com','Salsillo 175','Surco'),
      ('CU03','Aquiles','Hunter',994201755,'AquilesHunter@gmail.com','Lopez de Ayala 1451','Surco'),
      ('CU04','Victor','Hernan',966431283,'VictorHernan@gmail.com','Bartolome Bernejo 160','Surco'),
      ('CU05','Flavia','Cuba',957148741,'FlaviaCuba@gmail.com','Stravinski 206','Surco'),
      ('CU06','Pablo','Hernandez',946334592,'PabloHernandez@gmail.com','Av. Caminos del Inca 459','Surco'),
      ('CU07','Luz Maria','Casas',920063871,'LuzMariaCasas@gmail.com','Av. Pedro Ventura 127','Surco'),
      ('CU08','Almendra','Lucas',947692123,'AlmendraLucas@gmail.com','Marginal de la Selva 109','Surco'),
      ('CU09','Roman','Soler',948104749,'RomanSoler@gmail.com','Alfa Gemelos 158','Surco'),
      ('CU10','Santiago','Ramos',950676464,'SantiagoRamos@gmail.com','Manuel Bonilla 118','San Isidro'),
      ('CU11','Leonardo','Albani',955301645,'LeonardoAlbani@gmail.com','Av. Argentina 5447','San Isidro'),
      ('CU12','Jose','Lopez',944016431,'JoseLopez@gmail.com','Av. Julio César Tello 438','San Isidro'),
      ('CU13','Carlos','Ramirez',965239810,'CarlosRamirez@gmail.com','Av. Primero de Mayo 169','Surco'),
      ('CU14','Pedro','Rivas',924569081,'PedroRivas@gmail.com','Av. Argentina 5799','Los Olivos'),
      ('CU15','Pablo','Mamani',956166642,'PabloMamani@gmail.com','San Martín de Porres 15107','Los Olivos'),
      ('CU16','Angel','Lopez',946763161,'AngelLopez@gmail.com','Jirón Pérez de Tudela 2723','Los Olivos'),
      ('CU17','Matias','Romero',979527755,'MatiasRomero@gmail.com','Jirón Huancayo 776','Los Olivos'),
      ('CU18','Maria','Cordova',955240610,'MariaCordova@gmail.com','Av. Alameda 1','San Miguel'),
      ('CU19','Alex','Rodriguez',994209761,'AlexRodrigez@gmail.com','Jirón Miguel Zamora 120','San Borja'),
      ('CU20','Juan','Perez',969139624,'JuanPerez@gmail.com','Mariano Arredondo 15081','San Miguel'),
      ('CU21','Monica','Mendoza',984621458,'Monica_mendo@gmail.com','Jr. Callao 839','San Miguel'),
      ('CU22','Ariana','Grande',941057830,'grande_ari@gmail.com','Urb. Elio 345','Cercado de Lima'),
      ('CU23','Elvis','Refulio',912487564,'elvrefu@gmail.com','Av. Pio XII','Cercado de Lima'),
      ('CU24','Antonella','Bazan',954126784,'bazanantonella26@gmail.com','Av. República de Polonia','Surco'),
      ('CU25','Maya','Horna',941265874,'horna12_ma@gmail.com','Jr. Diego Cisneros 182','San Juan de Lurigancho'),
      ('CU26','Cristhian','Guimaray',921684321,'dinorex_14@gmail.com','Av. Santa Josefina 540','Los Olivos'),
      ('CU27','Alvaro','Arias',974681454,'arias77@gmail.com','Av San Juan de Dios 850','Puente Piedra'),
      ('CU28','Karina','Castillo',962301478,'karicas@gmail.com','Av. San Felipe 700','Puente Piedra'),
      ('CU29','Gianella','Alvarez',900547855,'gianella28@gmail.com','Jr. Caraz 650','Lince'),
      ('CU30','Alexandra','Bermudez',957412380,'bermu1909@gmail.com','Jorge Chavez 540','Villa El Salvador')

-- foreign keys
-- Reference: Cliente_Usuario (table: Cliente)
ALTER TABLE Cliente ADD CONSTRAINT Cliente_Usuario
    FOREIGN KEY (CCliente)
    REFERENCES Usuario (CUsuario);

-- Reference: Compra_Empleado (table: Compra)
ALTER TABLE Compra ADD CONSTRAINT Compra_Empleado
    FOREIGN KEY (CEmpleadosupervisor)
    REFERENCES Empleado (CEmpleado);

-- Reference: Compra_Proveedor (table: Compra)
ALTER TABLE Compra ADD CONSTRAINT Compra_Proveedor
    FOREIGN KEY (CProveedor)
    REFERENCES Proveedor (CProveedor);

-- Reference: Contrato_Empleado (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_Empleado
    FOREIGN KEY (CEmpleado)
    REFERENCES Empleado (CEmpleado);

-- Reference: Contrato_EmpleadoSupervisor (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_EmpleadoSupervisor
    FOREIGN KEY (CEmpleadosupervisor)
    REFERENCES Empleado (CEmpleado);

-- Reference: Contrato_Horario (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_Horario
    FOREIGN KEY (CHorario)
    REFERENCES Horario (CHorario);

-- Reference: DeliveryEstadoDelivery_Delivery (table: DeliveryEstado)
ALTER TABLE DeliveryEstado ADD CONSTRAINT DeliveryEstadoDelivery_Delivery
    FOREIGN KEY (CDelivery)
    REFERENCES Delivery (CDelivery);

-- Reference: DeliveryEstadoDelivery_EstadoDelivery (table: DeliveryEstado)
ALTER TABLE DeliveryEstado ADD CONSTRAINT DeliveryEstadoDelivery_EstadoDelivery
    FOREIGN KEY (CEstado)
    REFERENCES Estado (Cestado);

-- Reference: Delivery_Empleado (table: Delivery)
ALTER TABLE Delivery ADD CONSTRAINT Delivery_Empleado
    FOREIGN KEY (CEmpleado)
    REFERENCES Empleado (CEmpleado);

-- Reference: Delivery_Pedido (table: Delivery)
ALTER TABLE Delivery ADD CONSTRAINT Delivery_Pedido
    FOREIGN KEY (CPedido)
    REFERENCES Pedido (CPedido);

-- Reference: Delivery_Ruta (table: Delivery)
ALTER TABLE Delivery ADD CONSTRAINT Delivery_Ruta
    FOREIGN KEY (CRuta)
    REFERENCES Ruta (CRuta);

-- Reference: DetalleCompra_Compra (table: DetalleCompra)
ALTER TABLE DetalleCompra ADD CONSTRAINT DetalleCompra_Compra
    FOREIGN KEY (CCompra)
    REFERENCES Compra (CCompra);

-- Reference: Empleado_Empleado (table: Empleado)
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Empleado
    FOREIGN KEY (CEmpleadoSupervisor)
    REFERENCES Empleado (CEmpleado);

-- Reference: Empleado_Rol (table: Empleado)
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Rol
    FOREIGN KEY (CRol)
    REFERENCES Rol (CRol);

-- Reference: Empleado_Usuario (table: Empleado)
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Usuario
    FOREIGN KEY (CEmpleado)
    REFERENCES Usuario (CUsuario);

-- Reference: Ingrediente_Unidad (table: Ingrediente)
ALTER TABLE Ingrediente ADD CONSTRAINT Ingrediente_Unidad
    FOREIGN KEY (CUnidad)
    REFERENCES Unidad (CUnidad);

-- Reference: Paso_Platillo (table: Paso)
ALTER TABLE Paso ADD CONSTRAINT Paso_Platillo
    FOREIGN KEY (CPlatillo)
    REFERENCES Platillo (CPlatillo);

-- Reference: Pedido_Cliente (table: Pedido)
ALTER TABLE Pedido ADD CONSTRAINT Pedido_Cliente
    FOREIGN KEY (CCliente)
    REFERENCES Cliente (CCliente);

-- Reference: Pedido_TipoPago (table: Pedido)
ALTER TABLE Pedido ADD CONSTRAINT Pedido_TipoPago
    FOREIGN KEY (CTipopago)
    REFERENCES TipoPago (CTipopago);

-- Reference: PlatillosdelPedido_Pedido (table: PlatillosdelPedido)
ALTER TABLE PlatillosdelPedido ADD CONSTRAINT PlatillosdelPedido_Pedido
    FOREIGN KEY (CPedido)
    REFERENCES Pedido (CPedido);

-- Reference: PlatillosdelPedido_Platillo (table: PlatillosdelPedido)
ALTER TABLE PlatillosdelPedido ADD CONSTRAINT PlatillosdelPedido_Platillo
    FOREIGN KEY (CPlatillo)
    REFERENCES Platillo (CPlatillo);

-- Reference: ProveedorIngrediente_Ingrediente (table: ProveedorIngrediente)
ALTER TABLE ProveedorIngrediente ADD CONSTRAINT ProveedorIngrediente_Ingrediente
    FOREIGN KEY (CIngrediente)
    REFERENCES Ingrediente (CIngrediente);

-- Reference: ProveedorIngrediente_Proveedor (table: ProveedorIngrediente)
ALTER TABLE ProveedorIngrediente ADD CONSTRAINT ProveedorIngrediente_Proveedor
    FOREIGN KEY (CProveedor)
    REFERENCES Proveedor (CProveedor);

-- Reference: Reserva_Cliente (table: Reserva)
ALTER TABLE Reserva ADD CONSTRAINT Reserva_Cliente
    FOREIGN KEY (CCliente)
    REFERENCES Cliente (CCliente);

-- Reference: Table_47_Ingrediente (table: IngredientePlatillo)
ALTER TABLE IngredientePlatillo ADD CONSTRAINT Table_47_Ingrediente
    FOREIGN KEY (CIngrediente)
    REFERENCES Ingrediente (CIngrediente);

-- Reference: Table_47_Platillo (table: IngredientePlatillo)
ALTER TABLE IngredientePlatillo ADD CONSTRAINT Table_47_Platillo
    FOREIGN KEY (CPlatillo)
    REFERENCES Platillo (CPlatillo);

-- Reference: Table_48_Ingrediente (table: DetalleCompra)
ALTER TABLE DetalleCompra ADD CONSTRAINT Table_48_Ingrediente
    FOREIGN KEY (CIngrediente)
    REFERENCES Ingrediente (CIngrediente);

-- End of file.

