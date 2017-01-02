#
#
#

DROP TABLE IF EXISTS scuole;
CREATE TABLE scuole (
	id integer unsigned primary key not null,
	nome varchar(50)
);

insert into scuole values (1,"Esistenza");
insert into scuole values (2,"Necromanzia");

insert into scuole values (3,"Illusionismo");
insert into scuole values (4,"Elementalismo");

insert into scuole values (5,"Stregoneria");
insert into scuole values (6,"Demonologia");

insert into scuole values (7,"Utilità");
insert into scuole values (8,"Salvaguardia");

DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
        id integer unsigned primary key not null,
	nome varchar(100)
);

insert into categorie values (1,"Alterazione");
insert into categorie values (2,"Attacco");
insert into categorie values (3,"Controllo");
insert into categorie values (4,"Difesa");
insert into categorie values (5,"Evocazione");
insert into categorie values (6,"Informazione");

DROP TABLE IF EXISTS potenzialita;
CREATE TABLE potenzialita (
	scuola integer unsigned not null references scuole,
	categoria integer unsigned not null references categorie,
	valore integer unsigned not null default '0',
	primary key (scuola, categoria)
);

insert into potenzialita values
    (1,1,13),(1,2, 8),(1,3,14),(1,4,20),(1,5,12),(1,6, 8),
    (2,1,12),(2,2,17),(2,3,11),(2,4, 5),(2,5,13),(2,6,17),
    (3,1, 9),(3,2, 5),(3,3,20),(3,4,11),(3,5,14),(3,6,16),
    (4,1,16),(4,2,20),(4,3, 5),(4,4,14),(4,5,11),(4,6, 9),
    (5,1,20),(5,2, 9),(5,3,15),(5,4,11),(5,5, 5),(5,6,15),
    (6,1, 5),(6,2,16),(6,3,10),(6,4,14),(6,5,20),(6,6,10),
    (7,1,15),(7,6,10),
    (8,1, 5),(8,3, 5),(8,4,15);

DROP TABLE IF EXISTS tipi;
CREATE TABLE tipi (
        id integer unsigned primary key not null,
	nome varchar(100),
	categoria integer unsigned references categorie,
	dt integer not null default '0'
);

DROP TABLE IF EXISTS parametri;
CREATE TABLE parametri (
	id integer unsigned primary key not null,
	nome varchar(100) not null,
	punti_per_unita integer not null,
	divisore_unita integer not null,
	unita varchar(10),
	log10 enum('N','Y') not null default 'N'
);

DROP TABLE IF EXISTS formule;
CREATE TABLE formule (
       tipo integer unsigned not null references tipi,
       parametro integer unsigned not null references parametri,
       primary key (tipo, parametro)
);
#---------------------------------------------------------------------------
insert into tipi values (1,"Creazione Oggetti",1,19);
insert into tipi values (2,"Creazione Esseri Viventi",1,29);

insert into parametri values   
   (1,"Massa vivente",1,30,"kg",'N'),
   (2,"Complessità",1,1,NULL,'N'),
   (3,"Massa non vivente",1,30,"kg",'N');
insert into formule values (1,3), (1,2);

insert into parametri values   
   (4,"punti CAraTteristica",1,4,"punti",'N');
insert into formule values (2,1),(2,4);

insert into tipi values (3,"Modifica Anatomia per nuove funzioni",1,15);
insert into parametri values
   (5,"Fattore dimensione",2,1,"unità",'N');
insert into formule values(3,1),(3,2),(3,5);

insert into tipi values (4,"Modifica Danni anatomia/armi",1,20);
insert into parametri values   
   (6,"Massa",1,10,"kg",'N'),
   (7,"Danno",5,1,"d6",'N'),
   (8,"Danni addizionali",1,1,NULL,'N');
insert into formule values(4,6),(4,7);

insert into tipi values (5,"Variazione proprietà fisiche",1,15);
insert into parametri values   
   (101,"Massa non vivente",1,100,"kg",'N');
insert into formule values (5,1),(5,101),(5,2);

insert into tipi values (6,"Spostamento 3 dimensioni",1,19);
insert into tipi values (7,"Spostamento sul piano",1,16);
insert into tipi values (8,"Spostamento verticale",1,17);

insert into parametri values
   (9,"Velocità",1,10,"km/h",'N');

insert into formule values (6,9),(6,1),(6,101);
insert into formule values (7,9),(7,1),(7,101);
insert into formule values (8,9),(8,1),(8,101);

insert into tipi values (9,"Teletrasporto standard",1,19);
insert into tipi values (10,"Teletrasporto intelligente",1,24);
insert into tipi values (11,"Teletrasporto semintelligente",1,21);

insert into parametri values
   (10,"Distanza di spostamento",5,1,"m",'Y');

insert into formule values (9,101),(9,1),(9,10);
insert into formule values (10,101),(10,1),(10,10);
insert into formule values (11,101),(11,1),(11,10);

insert into tipi values (12,"Variazione abilità fisica",1,18);
insert into parametri values
   (11,"Variazione abilità",1,1,"punti",'N');
insert into formule values (12,11);

insert into tipi values (13,"Variazione caratteristica fisica",1,19);
insert into parametri values
   (12,"Variazione caratteristica",6,1,"punti",'N');
insert into formule values (13,12);

insert into tipi values (14,"Variazione dimensioni",1,17);
insert into formule values (14,5),(14,1),(14,101);

#---------------------------------------------------------------------------

insert into tipi values(101,"Danno Netto",2,21);
insert into parametri values
   (13,"Danno",2,1,"d6",'N');
insert into formule values (101,13);

insert into tipi values(102,"Danno Mirato",2,5);
insert into parametri values
   (14,"Base TPC",1,1,"punti",'N');
insert into formule values (102,14),(102,7);

insert into tipi values(103,"Morte",2,18);
insert into parametri values
   (15,"Difficoltà del TR",1,1,"punti",'N');
insert into formule values (103,15);

insert into tipi values(104,"Stordimento",2,9);
insert into formule values (104,15);

#---------------------------------------------------------------------------

insert into tipi values(201,"Comando",3,11);
insert into parametri values
   (16,"Difficoltà del TV",1,1,"punti",'N');
insert into formule values (201,16);

insert into tipi values(202,"Possessione",3,11);
insert into formule values (202,16);

insert into tipi values (203,"Variazione PSIche",3,10);
insert into parametri values
   (17,"Variazione caratteristica PSI",1,1,"punti",'N');
insert into formule values (203,17);

insert into tipi values (204,"Variazione VOLontà",3,19);
insert into formule values (204,12);


insert into tipi values (205,"Miraggio visivo",3,2);
insert into tipi values (206,"Miraggio uditivo",3,1);
insert into tipi values (207,"Miraggio olfattivo",3,2);
insert into tipi values (208,"Miraggio tattile",3,4);
insert into tipi values (209,"Miraggio visivo+uditivo",3,3);
insert into tipi values (210,"Miraggio completo",3,9);

insert into tipi values (215,"Illusione visiva",3,2);
insert into tipi values (216,"Illusione uditiva",3,1);
insert into tipi values (217,"Illusione olfattiva",3,2);
insert into tipi values (218,"Illusione tattile",3,4);
insert into tipi values (219,"Illusione visiva+uditiva",3,3);
insert into tipi values (220,"Illusione completa",3,9);

insert into parametri values
   (18,"Difficoltà del TV e del TOSS",1,1,"punti",'N');

insert into formule values
   (205,18),(206,18),(207,18),(208,18),(209,18),(210,18),
   (215,18),(216,18),(217,18),(218,18),(219,18),(220,18);

#---------------------------------------------------------------------------

insert into tipi values(301,"Antimagia",4,15);
insert into parametri values
   (19,"Base antimagia",1,1,"punti",'N');
insert into formule values (301,19);

insert into tipi values(302,"Armatura",4,19);
insert into parametri values
   (20,"Protezione",2,1,"PP",'N');
insert into formule values (302,20);

insert into tipi values(303,"Deviazione",4,25);
insert into parametri values
   (21,"Base TPD",1,1,"punti",'N'),
   (22,"Parate",2,1,NULL,'N');
insert into formule values (303,21);

insert into tipi values(304,"Parata",4,15);
insert into formule values (304,21),(304,22);

insert into tipi values(305,"Protezione Magica",4,20);
insert into parametri values
   (23,"Protezione",2,1,"d6",'N');
insert into formule values (305,23);

insert into tipi values(306,"Resurrezione",4,21);
insert into parametri values
   (24,"Riparazione",2,1,"d6",'N'),
   (25,"Tempo trascorso dalla morte",1,1,"giorni",'N');
insert into formule values (306,25),(306,24);

insert into tipi values(307,"Rianimazione",4,15);
insert into formule values (307,24);

insert into tipi values(308,"Riparazione danni",4,15);
insert into formule values (308,24);

insert into tipi values(309,"Cura",4,21);
insert into formule values (309,24);

insert into tipi values(310,"Scudo antidinamico",4,21);
insert into parametri values
   (26,"divisore",5,1,"unità",'N');
insert into formule values (310,26);

#---------------------------------------------------------------------------

insert into tipi values(401,"Controllo",5,14);
insert into tipi values(402,"Richiamo",5,18);
insert into tipi values(403,"Protezione",5,10);
insert into parametri values
   (27,"Potenza della creatura",1,1,"unità",'N');
insert into formule values (401,27),(402,27),(403,27);

#---------------------------------------------------------------------------
insert into tipi values(501,"Consiglio",6,9);
insert into parametri values
   (28,"TOT di base dell'abilità",1,1,"unità",'N');
insert into formule values (501,28);

insert into tipi values(502,"Dialogo",6,7);
insert into formule values (502,16);

insert into tipi values(503,"Divinazione",6,9);
insert into parametri values
   (29,"DIFF reperimento informazione'",1,1,"unità",'N'),
   (30,"Previsione",1,1,"ore",'N');
insert into formule values (503,29),(503,30);

insert into tipi values(504,"Interrogazione",6,6);
insert into parametri values
   (31,"Tempo trascorso",1,1,"anni",'N');
insert into formule values (504,16),(504,31);

insert into tipi values(505,"Registrazione",6,22);
insert into formule values (505,2);

insert into tipi values(506,"Trasmissione",6,11);
insert into tipi values(507,"Trasmissione+Ricezione",6,15);
insert into parametri values
   (32,"Distanza",4,1,"m",'Y');

insert into formule values (506,2),(506,32),(507,2),(507,32);

insert into tipi values(508,"Variazione abilità mentale",6,18);
insert into formule values (508,11);

insert into tipi values(509,"Variazione CONoscenza",6,19);
insert into formule values (509,12);

DROP TABLE IF EXISTS incantesimi;
CREATE TABLE incantesimi (
	id integer unsigned auto_increment primary key not null,
	nome varchar(100),
	tipo integer not null default '1' references tipi,
	scuola integer not null default '1' references scuole,

	raggio integer unsigned not null default '1',
	tipo_raggio enum ('m','target','d6 target') not null default 'm',
	gittata integer unsigned not null default '1',
	durata integer default '3',
	tipo_durata enum('concentrazione','permanente','permanenza ciclica'),
	bonus_tr integer not null default '0',
	rimbalzi integer unsigned,

	azione_gittata enum('N','Y') not null default 'N',
	azione_tempo enum('1d6 ore','6d4 ore','1d6 giorni','1d4 settimane','oltre 1 mese'),

	descrizione text
);

DROP TABLE IF EXISTS parametri_incantesimi;
CREATE TABLE parametri_incantesimi (
	incantesimo integer unsigned not null references incantesimi,
	parametro integer unsigned not null references parametri,
	valore integer not null default '0',
	primary key (incantesimo,  parametro)
);
