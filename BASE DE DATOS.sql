CREATE DATABASE SIGCE2;
USE SIGCE2;

CREATE TABLE PROGRAMA(
ide_Pro Int Not null Primary key auto_increment,
nom_Pro varchar(60) not null,
est_Pro VARCHAR(45) NOT NULL 
);

CREATE TABLE FICHA(
ide_Fic Int Not null Primary key unique, -- Numero de ficha--
jor_Fic varchar(60) not null,
est_Fic VARCHAR(45) NOT NULL ,
fecCom_Fic date not null,
fecFin_Fic date not null,
FK_ide_Pro Int Not null
);


CREATE TABLE APRENDIZ(
ide_Apr Int Not null Primary key unique, -- Identificacion--
Tide_Apr varchar(30) not null,
nom_Apr varchar(60) not null,
ape_Apr varchar(60) not null,
cor_Apr varchar(60) not null,
pass_Apr varchar(60) not null,

FK_ide_Fic int not null
);

CREATE TABLE DOCUMENTACION(
ide_Doc Int Not null Primary key auto_increment,
llamado1_Doc varchar(60) not null,
llamado2_Doc varchar(60) not null,
llamado3_Doc varchar(60) not null
);

CREATE TABLE INSTRUCTOR(
ide_Ins Int Not null Primary key unique, -- Identificacion--
tipIde_Ins varchar(30) not null,
nom_Ins varchar(60) not null,
ape_Ins varchar(60) not null,
cor_Ins varchar(60) not null,
Con_Ins varchar(60) not null,
pass_Ins VARCHAR(50) NOT NULL,

mat_Ins varchar(60) not null
);

CREATE TABLE CITACION(
id_Cit Int Not null Primary key auto_increment,
est_Cit Varchar(40) not null,
obv_Cit  Varchar(70) not null,
FK_ide_Doc Int not null,
FK_ide_Apr Int not null,
FK_ide_Ins Int not null
);

CREATE TABLE CASO(
id_Cas Int Not null Primary key auto_increment,
Des_Cas Varchar(100)not null,
com_Cas Varchar(70)not null,
FK_id_Cit Int not null,
FK_id_Tpd Int not null,
FK_id_Com int not null
);

CREATE TABLE TIPO_DECISION(
id_Tpd Int Not null Primary key auto_increment,
nom_Tpd Varchar(40)not null,
des_Tpd Varchar(70)not null
);

CREATE TABLE COMITE(
id_Com Int Not null Primary key auto_increment,
fech_Com date not null,
hora_Com time not null,
FK_ide_Fun int not null
);

CREATE TABLE FUNCIONARIO(
ide_Fun Int Not null Primary key unique, -- Identificacion--
tipIde_Fun varchar(30) not null,
nom_Fun varchar(60) not null,
ape_Ins varchar(60) not null,
corr_Ins varchar(30) not null
);
-- FICHA --
ALTER TABLE FICHA ADD FOREIGN KEY(FK_ide_Pro) REFERENCES PROGRAMA(ide_Pro);
-- APRENDIZ --
ALTER TABLE APRENDIZ ADD FOREIGN KEY(FK_ide_Fic) REFERENCES FICHA(ide_Fic);
-- CITACIÓN --
ALTER TABLE CITACION ADD FOREIGN KEY(FK_ide_Doc) REFERENCES DOCUMENTACION(ide_Doc);
ALTER TABLE CITACION ADD FOREIGN KEY(FK_ide_Apr) REFERENCES APRENDIZ(ide_Apr);
ALTER TABLE CITACION ADD FOREIGN KEY(FK_ide_Ins) REFERENCES INSTRUCTOR(ide_Ins);
-- CASO --
ALTER TABLE CASO ADD FOREIGN KEY(FK_id_Cit) REFERENCES CITACION(id_Cit);
ALTER TABLE CASO ADD FOREIGN KEY(FK_id_Tpd) REFERENCES TIPO_DECISION(id_Tpd);
ALTER TABLE CASO ADD FOREIGN KEY(FK_id_Com) REFERENCES COMITE(id_Com);
-- COMITE -- 
ALTER TABLE COMITE ADD FOREIGN KEY(FK_ide_Fun) REFERENCES FUNCIONARIO(ide_Fun);




INSERT INTO programa (nom_Pro) VALUES ('ANALISIS Y DESARROLLO DE SOFTWARE ADSO');

INSERT INTO ficha (ide_Fic, jor_Fic, fecCom_Fic, fecFin_Fic,est_Fic, FK_ide_Pro) VALUES ('2687386', 'DIURNA', '2023-01-25', '2024-06-27','Activo', '1');
INSERT INTO ficha (ide_Fic, jor_Fic, fecCom_Fic, fecFin_Fic,est_Fic, FK_ide_Pro) VALUES ('2687351', 'DIURNA', '2023-01-25', '2024-06-27', 'Activo', '1');

