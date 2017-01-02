# MySQL dump 6.4
#
# Host: localhost    Database: radix
#--------------------------------------------------------
# Server version	3.22.27

#
# Table structure for table 'categorie'
#
CREATE TABLE categorie (
  id int(10) unsigned DEFAULT '0' NOT NULL,
  nome varchar(100),
  PRIMARY KEY (id)
);

#
# Dumping data for table 'categorie'
#

INSERT INTO categorie VALUES (1,'Alterazione');
INSERT INTO categorie VALUES (2,'Attacco');
INSERT INTO categorie VALUES (3,'Controllo');
INSERT INTO categorie VALUES (4,'Difesa');
INSERT INTO categorie VALUES (5,'Evocazione');
INSERT INTO categorie VALUES (6,'Informazione');

#
# Table structure for table 'formule'
#
CREATE TABLE formule (
  tipo int(10) unsigned DEFAULT '0' NOT NULL,
  parametro int(10) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (tipo,parametro)
);

#
# Dumping data for table 'formule'
#

INSERT INTO formule VALUES (1,2);
INSERT INTO formule VALUES (1,3);
INSERT INTO formule VALUES (2,1);
INSERT INTO formule VALUES (2,4);
INSERT INTO formule VALUES (3,1);
INSERT INTO formule VALUES (3,2);
INSERT INTO formule VALUES (3,5);
INSERT INTO formule VALUES (4,6);
INSERT INTO formule VALUES (4,7);
INSERT INTO formule VALUES (5,1);
INSERT INTO formule VALUES (5,2);
INSERT INTO formule VALUES (5,101);
INSERT INTO formule VALUES (6,1);
INSERT INTO formule VALUES (6,9);
INSERT INTO formule VALUES (6,101);
INSERT INTO formule VALUES (7,1);
INSERT INTO formule VALUES (7,9);
INSERT INTO formule VALUES (7,101);
INSERT INTO formule VALUES (8,1);
INSERT INTO formule VALUES (8,9);
INSERT INTO formule VALUES (8,101);
INSERT INTO formule VALUES (9,1);
INSERT INTO formule VALUES (9,10);
INSERT INTO formule VALUES (9,101);
INSERT INTO formule VALUES (10,1);
INSERT INTO formule VALUES (10,10);
INSERT INTO formule VALUES (10,101);
INSERT INTO formule VALUES (11,1);
INSERT INTO formule VALUES (11,10);
INSERT INTO formule VALUES (11,101);
INSERT INTO formule VALUES (12,11);
INSERT INTO formule VALUES (13,12);
INSERT INTO formule VALUES (14,1);
INSERT INTO formule VALUES (14,5);
INSERT INTO formule VALUES (14,101);
INSERT INTO formule VALUES (101,13);
INSERT INTO formule VALUES (102,7);
INSERT INTO formule VALUES (102,14);
INSERT INTO formule VALUES (103,15);
INSERT INTO formule VALUES (104,15);
INSERT INTO formule VALUES (201,16);
INSERT INTO formule VALUES (202,16);
INSERT INTO formule VALUES (203,17);
INSERT INTO formule VALUES (204,12);
INSERT INTO formule VALUES (205,18);
INSERT INTO formule VALUES (206,18);
INSERT INTO formule VALUES (207,18);
INSERT INTO formule VALUES (208,18);
INSERT INTO formule VALUES (209,18);
INSERT INTO formule VALUES (210,18);
INSERT INTO formule VALUES (215,18);
INSERT INTO formule VALUES (216,18);
INSERT INTO formule VALUES (217,18);
INSERT INTO formule VALUES (218,18);
INSERT INTO formule VALUES (219,18);
INSERT INTO formule VALUES (220,18);
INSERT INTO formule VALUES (301,19);
INSERT INTO formule VALUES (302,20);
INSERT INTO formule VALUES (303,21);
INSERT INTO formule VALUES (304,21);
INSERT INTO formule VALUES (304,22);
INSERT INTO formule VALUES (305,23);
INSERT INTO formule VALUES (306,24);
INSERT INTO formule VALUES (306,25);
INSERT INTO formule VALUES (307,24);
INSERT INTO formule VALUES (308,24);
INSERT INTO formule VALUES (309,24);
INSERT INTO formule VALUES (310,26);
INSERT INTO formule VALUES (401,27);
INSERT INTO formule VALUES (402,27);
INSERT INTO formule VALUES (403,27);
INSERT INTO formule VALUES (501,28);
INSERT INTO formule VALUES (502,16);
INSERT INTO formule VALUES (503,29);
INSERT INTO formule VALUES (503,30);
INSERT INTO formule VALUES (504,16);
INSERT INTO formule VALUES (504,31);
INSERT INTO formule VALUES (505,2);
INSERT INTO formule VALUES (506,2);
INSERT INTO formule VALUES (506,32);
INSERT INTO formule VALUES (507,2);
INSERT INTO formule VALUES (507,32);
INSERT INTO formule VALUES (508,11);
INSERT INTO formule VALUES (509,12);

#
# Table structure for table 'incantesimi'
#
CREATE TABLE incantesimi (
  id int(10) unsigned DEFAULT '0' NOT NULL auto_increment,
  nome varchar(100),
  tipo int(11) DEFAULT '1' NOT NULL,
  scuola int(11) DEFAULT '1' NOT NULL,
  raggio int(10) unsigned DEFAULT '1' NOT NULL,
  tipo_raggio enum('m','target','d6 target') DEFAULT 'm' NOT NULL,
  gittata int(10) unsigned DEFAULT '1' NOT NULL,
  durata int(11) DEFAULT '3',
  tipo_durata enum('concentrazione','permanente','permanenza ciclica'),
  bonus_tr int(11) DEFAULT '0' NOT NULL,
  rimbalzi int(10) unsigned,
  azione_gittata enum('N','Y') DEFAULT 'N' NOT NULL,
  azione_tempo enum('1d6 ore','6d4 ore','1d6 giorni','1d4 settimane','oltre 1 mese'),
  descrizione text,
  PRIMARY KEY (id)
);

#
# Dumping data for table 'incantesimi'
#

INSERT INTO incantesimi VALUES (1,'Acquadardo',102,4,1,'target',10,NULL,NULL,0,NULL,'N',NULL,'Crea un dardo d\'acqua che infligge 2d6 PV/PSC di danno, pi&ugrave;\nulteriori danni addizionali da emorragia. L\'usufruitore, perch&eacute;\nil dardo vada a segno, dovr&agrave; realizzare un attacco con una\nbase al TPC di 17. Il dardo scompare alla fine del round.');
INSERT INTO incantesimi VALUES (2,'Condensazione',1,4,1,'target',1,3,'permanente',0,NULL,'N',NULL,'Crea 30 litri d\'acqua ad una distanza massima di un metro\ndall\'usufruitore mediante condensazione del vapore acqueo. L\'acqua\nviene creata permanentemente');
INSERT INTO incantesimi VALUES (3,'Controllo acqua',6,4,1,'target',4,7,NULL,0,NULL,'N',NULL,'Permette di spostare 1 metro cubo d\'acqua alla velocità di 10 km/h facendogli\nassumere le forme desiderate, purché l\'acqua formi un corpo unico.\nL\'incantesimo dura 7 minuti.');
INSERT INTO incantesimi VALUES (4,'Controllo aria',6,4,1,'target',4,7,NULL,0,NULL,'N',NULL,'Permette di spostare con una corrente d\'aria un target di peso massimo 60 kg con un equipaggiamento di massimo 100 kg alla velocità di 10 km/h');
INSERT INTO incantesimi VALUES (5,'Controllo Elementali I',401,4,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un elementale di potenza\nmassima 10, situata a massimo 4 metri di distanza dal mago, per 3 minuti.\nPerch&eacute; il controllo abbia luogo, il mago deve vincere un Confronto di TV con la\ncreatura se questa &egrave; una creatura errante oppure realizzare un TV maggiore\ndel TV effettuato da colui che detiene il controllo sulla creatura.');
INSERT INTO incantesimi VALUES (6,'Controllo Elementali II',401,4,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un elementale di potenza\nmassima 17, situata a massimo 4 metri di distanza dal mago, per 3 minuti.\nPerchè il controllo abbia luogo, il mago deve vincere un Confronto di TV con la\ncreatura se questa è una creatura errante oppure realizzare un TV maggiore\ndel TV effettuato da colui che detiene il controllo sulla creatura.');
INSERT INTO incantesimi VALUES (7,'Controllo Elementali III',401,4,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un elementale di potenza\nmassima 24, situata a massimo 4 metri di distanza dal mago, per 3 minuti.\nPerchè il controllo abbia luogo, il mago deve vincere un Confronto di TV con la\ncreatura se questa è una creatura errante oppure realizzare un TV maggiore\ndel TV effettuato da colui che detiene il controllo sulla creatura.');
INSERT INTO incantesimi VALUES (8,'Controllo fuoco',6,4,1,'target',13,7,NULL,0,NULL,'N',NULL,'Permette di spostare una fiamma che si trovi alla distanza massima di 13\nmetri dall\'usufruitore per 7 minuti ed alla velocità massima di 10 Km/h. La\nbase della fiamma deve essere sempre a contatto con un materiale\ninfiammabile.');
INSERT INTO incantesimi VALUES (9,'Controllo pietra',6,4,3,'m',10,3,NULL,0,NULL,'N',NULL,'Permette di spostare 2000 kg di pietre che si trovino entro 3 metri di raggio ed\nalla distanza massima di 10 metri dall\'usufruitore, alla velocità di 10 km/h.\nL\'incantesimo dura 3 minuti.');
INSERT INTO incantesimi VALUES (10,'Corazza di Pietra',302,4,1,'target',0,3,NULL,0,NULL,'N',NULL,'Riveste il corpo del Target di una corazza di Pietra che gli offre una protezione\ndi 5 PP per 3 minuti.');
INSERT INTO incantesimi VALUES (11,'Corrente ascensionale',6,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Crea una corrente d\'aria che permette al target di volare alla velocità di 100\nKm/h per tutto il tempo in cui l\'usufruitore resta concentrato. Se l\'usufruitore\nperde la concentrazione l\'incantesimo dura per ulteriori 3 minuti.');
INSERT INTO incantesimi VALUES (12,'Dimensioni acqua I',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di aumentare o diminuire di 6 volte le dimensioni di\n100 litri d\'acqua. Gli elementali dell\'acqua possono usarlo per cambiare le\nproprie. L\'incantesimo dura a concentrazione. Se l\'usufuitore perde la\nconcentrazione l\'incantesimo dura per ulteriori 3 minuti. Alla fine\ndell\'incantesimo l\'acqua riprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (13,'Dimensioni acqua II',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di aumentare o diminuire di 10 volte le dimensioni di\n300 litri d\'acqua. Gli elementali dell\'acqua possono usarlo per cambiare le\nproprie. L\'incantesimo dura a concentrazione. Se l\'usufuitore perde la\nconcentrazione l\'incantesimo dura per ulteriori 3 minuti. Alla fine\ndell\'incantesimo l\'acqua riprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (14,'Dimensioni fuoco I',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di raddoppiare o dimezzare le dimensioni di una\nfiamma. Gli elementali del fuoco possono usarlo per cambiare le proprie.\nL\'incantesimo dura a concentrazione. Se l\'usufuitore perde la concentrazione\nl\'incantesimo dura per ulteriori 3 minuti. Alla fine dell\'incantesimo la fiamma\nriprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (15,'Dimensioni fuoco II',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di aumentare o diminuire di 5 volte le dimensioni di\nuna fiamma. Gli elementali del fuoco possono usarlo per cambiare le proprie.\nL\'incantesimo dura a concentrazione. Se l\'usufuitore perde la concentrazione\nl\'incantesimo dura per ulteriori 3 minuti. Alla fine dell\'incantesimo la fiamma\nriprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (16,'Dimensioni pietra I',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di aumentare o diminuire di 10 volte le dimensioni di 200\nkg di pietra. Gli elementali della pietra possono usarlo per cambiare le proprie.\nL\'incantesimo dura a concentrazione. Se l\'usufuitore perde la concentrazione\nl\'incantesimo dura per ulteriori 3 minuti. Alla fine dell\'incantesimo la pietra\nriprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (17,'Dimensioni pietra II',14,4,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Permette all\'usufruitore di aumentare o diminuire di 14 volte le dimensioni di 200\nkg di pietra. Gli elementali della pietra possono usarlo per cambiare le proprie.\nL\'incantesimo dura a concentrazione. Se l\'usufuitore perde la concentrazione\nl\'incantesimo dura per ulteriori 3 minuti. Alla fine dell\'incantesimo la pietra\nriprende le dimensioni originali.');
INSERT INTO incantesimi VALUES (18,'Evocazione elementali I',402,4,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il Mago richiama un Elementale del Fuoco Minore o un Elementale dell\'Aria\nMinore, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago\nvinca un Confronto di TV con l\'elementale. Se l\'elementale vince il confronto torna\nnel suo elemento senza sottostare ai comandi dell\'evocatore. Alla fine della durata,\nse l\'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà.');
INSERT INTO incantesimi VALUES (19,'Evocazione elementali II',402,4,1,'target',1,3,NULL,0,NULL,'N',NULL,'Con questo incantesimo il mago è in grado di richiamare un elementale dell\' Aria\nmaggiore o un elementale del Fuoco Maggiore (o un elementale di potenza inferiore),\nche sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca un\nConfronto di TV con l\'elementale. Se l\'elementale vince il confronto torna nel suo\nelemento senza sottostare ai comandi dell\'evocatore. Alla fine della durata, se\nl\'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà.');
INSERT INTO incantesimi VALUES (20,'Evocazione elementali III',402,4,1,'target',1,3,NULL,0,NULL,'N',NULL,'Con questo incantesimo il mago è in grado di richiamare un elementale della Pietra\nmaggiore o un elementale dell\' Acqua Maggiore (o un elementale di potenza\ninferiore), che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago\nvinca un confronto di TV con l\'elementale. Se l\'elementale vince il confronto torna nel\nsuo elemento senza sottostare ai comandi dell\'evocatore. Alla fine della durata, se\nl\'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà.');
INSERT INTO incantesimi VALUES (21,'Fango in Pietra',5,4,1,'target',1,3,'permanente',0,NULL,'N',NULL,'Cementifica permanentemente un metro cubo circa di fango. ');
INSERT INTO incantesimi VALUES (22,'Forma Acqua',5,4,1,'target',0,3,NULL,0,NULL,'N',NULL,'Consente di far prendere ad un target del peso\nmassimo di 90 kg (ed al suo equipaggiamento, del peso massimo \ndi 30 kg), purché questi venga toccato dal mago al momento\ndel lancio dell\'incantesimo, la consistenza dell\'acqua.\nIl target potrà muoversi nell\'acqua liberamente \ne senza aver bisogno di respirare ma non potrà spostare oggetti, \nattaccare, parlare e lanciare altri incantesimi. \nIl target in questo stato è immune agli attacchi fisici. \nIl Target non è individuabile se si trova nell\'acqua. \nL\'incantesimo dura 3 minuti.');
INSERT INTO incantesimi VALUES (23,'Forma Aria',5,4,1,'target',0,3,NULL,0,NULL,'N',NULL,'Consente di far prendere ad un target del peso massimo di 90 kg (ed al suo equipaggiamento, del peso massimo di 30 kg), purché questi venga toccato dal mago al momento del lancio dell\'incantesimo, la consistenza dell\'aria. Il target potrà muoversi nell\'aria liberamente come se stesse nuotando ma non potrà spostare oggetti, attaccare, parlare e lanciare altri incantesimi. Il target in questo stato è immune agli attacchi fisici. Il Target diviene praticamente invisibile (TOSS per individuarlo a diff. 24). L\'incantesimo dura 3 minuti.\n');
INSERT INTO incantesimi VALUES (24,'Fossa',9,4,1,'m',13,3,NULL,0,NULL,'N',NULL,'Crea una fossa di 2 metri cubi nella terra, sabbia o altro\nmateriale pietroso non compatto, ad una distanza massima di\n13 metri dal mago, teletrasportando la terra ad un metro di\ndistanza.');
INSERT INTO incantesimi VALUES (25,'Meteora',101,4,10,'m',19,0,NULL,0,NULL,'N',NULL,'Crea una meteora che precipitando a terra ad una distanza\nmassima di 19 metri dall\'usufruitore provoca a tutti coloro che si\ntrovino entro 10 metri dal punto di impatto, 10d6 PV di danno\npiù eventuali danni addizionali da Emorragia Interna. Il danno\ndiretto può essere dimezzato realizzando un TR a difficoltà 30.\nDanni addizionali: da Emorragia Interna');
INSERT INTO incantesimi VALUES (26,'Muro di fuoco',101,4,5,'m',1,3,NULL,0,NULL,'N',NULL,'Crea una muraglia di fuoco ad una distanza massima di 1\nmetro dall\'usufruitore, lunga 10 metri e alta fino 5 che provoca a\nchiuque la attraversi un danno di 2d6 PV più eventuali danni\naddizionali da ustione. Le vittime possono dimezzare i danni\ndiretti realizzando un TR a difficoltà 14. Il muro scompare dopo\n3 minuti.\n');
INSERT INTO incantesimi VALUES (27,'Palla di Fuoco I',101,4,4,'m',10,NULL,NULL,0,NULL,'N',NULL,'Crea una palla di fuoco ad una distanza massima di 10 metri\ndall\'usufruitore che esplodendo provoca 6d6 PV di danno (più\neventuali danni addizionali da ustione) a tutti coloro si trovino\nnel raggio di 4 metri dall\'epicentro. Tali danni possono essere\ndimezzati realizzando un TR a difficoltà 22.');
INSERT INTO incantesimi VALUES (28,'Palla di Fuoco II',101,4,5,'m',16,NULL,NULL,0,NULL,'N',NULL,'Crea una palla di fuoco ad una distanza massima di 16 metri\ndall\'usufruitore che esplodendo provoca 8d6 PV di danno (più\neventuali danni addizionali da ustione) a tutti coloro si trovino\nnel raggio di 5 metri dall\'epicentro. Tali danni possono essere\ndimezzati realizzando un TR a difficoltà 26.\nDanni addizionali: da ustione');
INSERT INTO incantesimi VALUES (29,'Parlare agli Elementi',504,4,1,'d6 target',1,NULL,NULL,0,NULL,'N',NULL,'Permette di parlare ad un qualsiasi elemento: acqua, aria, terra,\nfuoco, che si trovi a meno di un metro dall\'usufruitore. Potranno\nessere poste 1d6 di domande e l\'elemento risponderà in relazione\nalla sua esperienza diretta negli ultimi 9 anni.');
INSERT INTO incantesimi VALUES (30,'Pietrificazione I',103,4,1,'target',7,NULL,NULL,0,NULL,'N',NULL,'Provoca la pietrificazione di un target che non realizzi un TR a\ndifficoltà 25 facendone cessare completamente l\'attività vitale. Il\ntarget può tornare in vita mediante Resurrezione. ');
INSERT INTO incantesimi VALUES (31,'Pietrificazione II',103,4,3,'m',10,NULL,NULL,0,NULL,'N',NULL,'Provoca la pietrificazione di tutti gli esseri che si trovano in\nun\'area di 3 metri di raggio e distante massimo 10 metri, che\nnon realizzino un TR a difficoltà 34, facendone cessare\ncompletamente l\'attività vitale. Le vittime possono tornare in vita\nmediante Resurrezione. \n');
INSERT INTO incantesimi VALUES (32,'Pirodardo',102,4,1,'target',10,NULL,NULL,0,NULL,'N',NULL,'Crea una freccia di fuoco che infligge 1d6 PV/PSC di danno.\nL\'usufruitore, perché la freccia vada a segno dovrà realizzare un\nattacco con una base al TPC di 15. La freccia scompare alla fine\ndel round.');
INSERT INTO incantesimi VALUES (33,'Protezione Elementali I',403,4,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio\nall\'interno della quale gli elementali di potenza inferiore o uguale\na 10 non possono entrare se non realizzando un TV a difficoltà\n20. Realizzando un TV le creature potranno avanzare di 1\nmetro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno\ndell\'area di protezione attacca le creature dalle quali si sta\nproteggendo. Per ogni metro all\'interno dell\'area il TV delle\ncreature è penalizzato di -1. L\'incantesimo perdura per 7 minuti.');
INSERT INTO incantesimi VALUES (34,'Protezione Elementali II',403,4,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio\nall\'interno della quale gli elementali di potenza inferiore o uguale\na 17 non possono entrare se non realizzando un TV a difficoltà\n27. Realizzando un TV le creature potranno avanzare di 1\nmetro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno\ndell\'area di protezione attacca le creature dalle quali si sta\nproteggendo. Per ogni metro all\'interno dell\'area il TV delle\ncreature è penalizzato di -1. L\'incantesimo perdura per 7 minuti.');
INSERT INTO incantesimi VALUES (35,'Protezione Elementali III',403,4,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio\nall\'interno della quale gli elementali di potenza inferiore o uguale\na 24 non possono entrare se non realizzando un TV a difficoltà\n34. Realizzando un TV le creature potranno avanzare di 1\nmetro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno\ndell\'area di protezione attacca le creature dalle quali si sta\nproteggendo. Per ogni metro all\'interno dell\'area il TV delle\ncreature è penalizzato di -1. L\'incantesimo perdura per 7 minuti.');
INSERT INTO incantesimi VALUES (36,'Ragnatela di Fuoco I',101,4,1,'m',7,NULL,NULL,0,NULL,'N',NULL,'Crea una ragnatela di fuoco di 1 metro di raggio ad una\ndistanza massima di 7 metri dall\'usufruitore, che infligge 4d6\nPV di danno a tutti coloro si trovino nel campo d\'azione. Le\nvittime possono realizzare un TR a difficoltà 18 per dimezzare i\ndanni. Produce anche danni addizionali da fuoco.');
INSERT INTO incantesimi VALUES (37,'Ragnatela di Fuoco II',101,4,5,'m',10,NULL,NULL,0,NULL,'N',NULL,'Crea una ragnatela di fuoco di 5 metri di raggio ad una\ndistanza massima di 7 metri dall\'usufruitore, che infligge 4d6\nPV di danno a tutti coloro si trovino nel campo d\'azione. Le\nvittime possono realizzare un TR a difficoltà 18 per dimezzare i\ndanni. Produce anche danni addizionali da fuoco.');
INSERT INTO incantesimi VALUES (38,'Ritenzione Idrica',103,4,1,'target',4,NULL,NULL,0,NULL,'N','1d4 settimane','Provoca la morte di un target in 1d4 settimane se questi non\nrealizza un TR a difficoltà 22, per impossibilità ad espellere i\nfluidi corporei.\n');
INSERT INTO incantesimi VALUES (39,'Sciabola di Vento',102,4,1,'target',7,NULL,NULL,0,NULL,'N',NULL,'Crea una lama d\'aria che infligge 2d6 PV/PSC di danno.\nL\'usufruitore, perché la lama vada a segno dovrà realizzare un\nattacco con una base al TPC di 13. la lama scompare alla fine del\nround.');
INSERT INTO incantesimi VALUES (40,'Scudo d\'acqua',310,4,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea uno scudo d\'acqua attorno al target che gli permette di dimezzare tutti i danni da botta, da punta e da taglio che gli vengono inflitti.');
INSERT INTO incantesimi VALUES (41,'Scudo di sabbia',310,4,1,'target',0,7,NULL,0,NULL,'N',NULL,'Crea uno scudo di sabbia attorno al target che gli permette di dividere per\n5 tutti i danni da botta, da punta e da taglio che gli vengono inflitti. L\'incantesimo\nperdura per 7 minuti.');
INSERT INTO incantesimi VALUES (42,'Sfera di vuoto I',101,4,1,'m',7,NULL,NULL,0,NULL,'N',NULL,'Crea una sfera di vuoto del raggio di 1 metro, ad una distanza massima di 7 metri dall\'usufruitore, che provoca a tutti coloro che si trovino all\'interno del campo d\'azione 5d6 PV di danno. Tali danni possono essere dimezzati realizzando\nun TR a difficoltà 18.');
INSERT INTO incantesimi VALUES (43,'Sfera di vuoto II',101,4,4,'m',10,NULL,NULL,0,NULL,'N',NULL,'Crea una sfera di vuoto del raggio di 4 metri, ad una distanza massima di 10\nmetri dall\'usufruitore, che provoca a tutti coloro che si trovino all\'interno\ndel campo d\'azione 5d6 PV di danno. Tali danni possono essere dimezzati realizzando\nun TR a difficoltà 20. Produce danni addizionali da Emorragia');
INSERT INTO incantesimi VALUES (44,'Spada di ghiaccio',4,4,1,'target',0,7,NULL,0,NULL,'N',NULL,'Trasforma il braccio del Target in una Spada di Ghiaccio in grado di produrre\n3d6 PV/PSC di danno quando va a segno. Produce i Danni Addizionali tipici delle\nATL.');
INSERT INTO incantesimi VALUES (45,'Tempesta di Ghiaccio',101,4,6,'m',10,NULL,NULL,0,NULL,'Y',NULL,'Crea una tempesta di ghiaccio che produce 6d6 PV di danno, più eventuali\ndanni addizionali da ustione, in un\'area di 6 metri di raggio che si trovi\nfino a 10 metri dall\'usufruitore. L\'incantesimo investe inoltre tutti coloro\nche si trovino in una fascia rettangolare larga 12 metri che va dall\'usufruitore\nal punto di arrivo dell\'incantesimo. Le vittime possono dimezzare i danni diretti\nrealizzando un TR a difficoltà 22. L\'incantesimo produce danni addizionali da ustione.');
INSERT INTO incantesimi VALUES (46,'Terradardo',102,4,1,'target',13,NULL,NULL,0,NULL,'N',NULL,'Crea un dardo di pietra che infligge 3d6 PV/PSC di danno (più eventuali\nDanni Addizionali da Emorragia) ad un target che si trova ad una distanza massima\ndi 13 metri dall\'usufruitore. L\'usufruitore, perché il dardo vada a segno dovrà\nrealizzare un attacco con una base al TPC di 15. Il dardo scompare alla fine\ndel round.');
INSERT INTO incantesimi VALUES (47,'Terremoto',101,4,11,'m',0,NULL,NULL,0,NULL,'N',NULL,'Il Mago è l\'epicentro di un Terremoto di 11 metri di raggio che provoca\n8d6 PV di danno più eventuali danni addizionali da Emorragia a tutti coloro\nche si trovino in tale area. Le vittime possono dimezzare il danno realizzando\nun TR a difficoltà 26. Il mago è escluso da questo danno.');
INSERT INTO incantesimi VALUES (48,'Ululato di Vento',104,4,1,'m',7,NULL,NULL,0,NULL,'N',NULL,'Stordisce per il round in corso e per quello successivo tutti coloro nel raggio\ndi 1 metro ed alla distanza massima di 7 metri dell\'usufruitore che non realizzino\nun TR a difficoltà 20');
INSERT INTO incantesimi VALUES (49,'Viaggio per Via Acqua',11,4,1,'m',0,NULL,NULL,0,NULL,'N',NULL,'Permette di Teletrasportare istantaneamente tutti gli oggetti del peso totale\nmassimo di 100 kg e tutti gli esseri viventi di peso totale massimo di 90 kg\n(mago compreso) che si trovino ad un metro dal mago, in un punto distante massimo\n10 km in cui si trovi una grande concentrazione di acqua (Lago, fiume, mare,etc...)\n');
INSERT INTO incantesimi VALUES (50,'Viaggio per Via Roccia',11,4,1,'m',0,NULL,NULL,0,NULL,'N',NULL,'Permette di Teletrasportare istantaneamente tutti gli oggetti del peso totale\nmassimo di 200 kg e tutti gli esseri viventi di peso totale massimo di 90 kg\n(mago compreso) che si trovino ad un metro dal mago, in un punto distante massimo\n10 km in cui si trovi una grande concentrazione di pietra (montagna, castello\ndi pietra, ecc.)');
INSERT INTO incantesimi VALUES (51,'Acido (Arkyox)',102,6,1,'target',4,3,NULL,0,NULL,'N',NULL,'Dal mago parte uno spruzzo di acido che infligge ad un target a massimo 4 metri\ndi distanza 1d6 PV/PSC di danno con base al TPC di 10.');
INSERT INTO incantesimi VALUES (52,'Ammorbidente (Rimmom)',5,6,4,'m',10,3,NULL,0,NULL,'N',NULL,'Rende gli oggetti posti in un`area con un raggio di 4 metri, a distanza\ndi massimo 10 metri dal mago, morbidi e inadatti a sorreggere pesi o a resistere\nagli urti. Il demone compare sotto forma di una zanzara che succhia materia dagli oggetti.');
INSERT INTO incantesimi VALUES (53,'Anima diabolica (Foran)',2,6,1,'target',0,NULL,NULL,0,NULL,'N','1d6 giorni','Anima un oggetto (un monile, un`arma etc..) di 90 kg di peso massimo. L\'incantesimo attribuisce 10 ad ogni caratteristica. L\'oggetto si anima in 1d6 giorni.');
INSERT INTO incantesimi VALUES (54,'Aura demoniaca (Roneues)',301,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Riveste il target di un`aura demoniaca rossastra che rende inattivo per\n3 minuti qualsiasi incantesimo diretto al target con una base Antimagia di 20');
INSERT INTO incantesimi VALUES (55,'Boccaglio (Gredlur)',3,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Un demone dalla forma di tubo telescopico (fino a 1 metro e 1/2) si collega\ncon la bocca e il naso del target consentendogli di respirare sott\'acqua\no sotto terra. Il demone scompare dopo 3 minuti');
INSERT INTO incantesimi VALUES (56,'Colonna di fuoco (Ighnar)',101,6,2,'m',10,NULL,NULL,0,NULL,'N',NULL,'Emette una fiammata che si propaga dal basso verso l\'alto e che provoca 4d6 PV\ndi danno su un\'area di 2 metri di raggio situata fino a 10 metri dal mago.\nI danni possono essere dimazzati realizzando un TR a difficoltà 18.');
INSERT INTO incantesimi VALUES (57,'Corazza infernale (Reshpus)',302,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Un demone che appare come una fascia corazzata avvolge il corpo del target fornendogli\n5 PP su tutto il corpo per 3 minuti.\n');
INSERT INTO incantesimi VALUES (58,'Decuria di Mammon',402,6,10,'target',1,3,NULL,0,NULL,'N',NULL,'Il mago evoca 10 demoni guerrieri Mammon. Il TV per il controllo viene effettuato\nseparatamente da ciascuno di essi.');
INSERT INTO incantesimi VALUES (59,'Demone del gioco (Abolam)',12,6,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Conferisce al target un bonus di +5 all\'abilità Barare per la durata della\nconcentrazione del mago + 3 minuti.');
INSERT INTO incantesimi VALUES (60,'Difensore (Pazooso)',305,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Il target viene protetto dal demone difensore che si manifesta come uno sciame\ndi insetti vorticante che gli assorbe 4d6 PV di danno provocato dagli incantesimi\ndi Attacco/Danno Netto. L\'incantesimo ha durata 3 minuti.');
INSERT INTO incantesimi VALUES (61,'Doppelganger (Hutgin)',210,6,2,'m',7,15,NULL,0,NULL,'N',NULL,'Un demone assume le sembianze del mago e si rende visibile ad una distanza di\nmassimo 7 metri dal mago stesso senza peraltro potersi muovere al di fuori di\nun\'area di 2 metri di raggio. Realizzando un TOSS a difficoltà 20 ci\nsi rende conto che si tratta di una copia, che sparisce se si realizza un TV\na difficoltà 20. La copia non può combattere. L\'incantesimo dura 15\nminuti.');
INSERT INTO incantesimi VALUES (62,'Evoca Alastor',402,6,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca il demone guerriero Alastor per 3 minuti. Il mago può impartirgli\nordini se vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (63,'Evoca Ammon',402,6,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca il demone guerriero Ammon per 3 minuti. Il mago può impartirgli ordini\nse vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (64,'Evoca Arioch',402,6,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca il demone guerriero Arioch per 3 minuti. Il mago può impartirgli\nordini se vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (65,'Evoca Mammon',402,6,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca il demone guerriero Mammon per 3 minuti. Il mago può impartirgli\nordini se vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (66,'Evoca Strayesor',402,6,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca il demone guerriero Strayesor per 3 minuti. Il mago può impartirgli\nordini se vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (67,'Fascino satanico (Kham)',201,6,1,'m',1,3,NULL,0,NULL,'N',NULL,'Gli esseri situati all\'interno di un\'area di un metro di raggio che non\nrealizzano un TV a difficoltà 20 vengono affascinati irresistibilmente\ndal mago per 3 minuti.');
INSERT INTO incantesimi VALUES (68,'Fiamma demoniaca (Rahouart)',101,6,10,'m',19,NULL,NULL,0,NULL,'Y',NULL,'Fa partire dal mago una fiammata larga 20 metri che distrugge tutto ciò\nche trova per una gittata di massimo 19 metri esplodendo al termine, in un\'area\ndi 10 metri di raggio provocando a tutti gli oggetti investiti un danno di 10d6\nPV. Le vittime possono dimezzare il danno realizzando un TR a difficoltà\n30. La fiamma può produrre danni addizionali.');
INSERT INTO incantesimi VALUES (69,'Filamento adesivo (Poimon)',304,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Dal corpo del target si diparte un filamento adesivo atto a parare un colpo\ncon Base TPD 5. Dopo 3 minuti o dopo una parata il filamento scompare.');
INSERT INTO incantesimi VALUES (70,'Freccia demoniaca (Dreayn)',102,6,1,'target',10,NULL,NULL,0,NULL,'N',NULL,'Fa scaturire dal mago un piccolo demone simile ad una larva dotata di zanne\nche si scaglia sul target, distante massimo 10 metri, mordendolo e infliggendogli\n1d6 PV/PSC di danno. La base TPC è 15.');
INSERT INTO incantesimi VALUES (71,'Globo demoniaco (Kira)',301,6,1,'m',1,3,NULL,0,NULL,'N',NULL,'Crea un globo di luce demoniaca rossastra di 1 metro di raggio per 3 minuti.\nQualunque incantesimo diretto ad esseri od oggetti all\'interno del globo sarà\nneutralizzato con una base antimagia di 20. Il mago può creare il globo\nfino a 1 metro di distanza da se.');
INSERT INTO incantesimi VALUES (72,'Guanto (Adramelek)',103,6,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Il target che non realizza un TR a difficoltà 20 viene rivoltato come un\nguanto, morendo istantaneamente.  \nI l corpo torna intatto dopo un incantesimo di resurrezione.');
INSERT INTO incantesimi VALUES (73,'Guaritore (Baribars)',309,6,1,'m',1,NULL,NULL,0,NULL,'N',NULL,'Con questo incantesimo, il mago è in grado, grazie al demone Guaritore,\ndi curare 3d6 PV/PSC di danno a tutti gli esseri viventi posti ad una distanza\nmassima di 1 metro da lui ed in un area di 1 metro di raggio.\nL\'incantesimo lascia tracce visibili della cura sotto forma di \nescrescenze cutanee o simili.');
INSERT INTO incantesimi VALUES (74,'Individua demoni (Zebuliel)',503,6,10,'m',0,3,NULL,0,NULL,'N',NULL,'L\'incantesimo individua la presenza di uno o più demoni nel raggio di 10\nmetri, senza indicarne la collocazione.\n');
INSERT INTO incantesimi VALUES (75,'Intercettatore (Zyunsak)',304,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Il target viene protetto dal Demone intercettatore in grado di parare 5 attacchi\nfisici o di Attacco/Danno Mirato con una base di parata di 15. Il demone svanisce\ndopo 3 minuti oppure dopo aver parato 5 attacchi.');
INSERT INTO incantesimi VALUES (76,'Macellaio (Greayn)',102,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'La vittima viene scuoiata nel punto di contatto con la mano dell\'usufruitore,\nricevendo 3d6 PV/PSC di danno. Infligge danni addizionali da emorragia.\nL\'usufruitore potrebbe dover realizzare un TPC con l\'abllità CAC.');
INSERT INTO incantesimi VALUES (77,'Mantici (Iblis)',6,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Alcuni piccoli demoni che ingoiano ed emettono aria si attaccano al corpo del\ntarget del peso massimo di 90 kg e con un equipaggiamento di massimo 100 kg,\nconsentendogli di volare per 3 minuti a 100 km/h.\n');
INSERT INTO incantesimi VALUES (78,'Messaggero (Belialys)',507,6,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Un demone messaggero recapita istantaneamente un messaggio scritto di poche\npagine ad un target posto ad una distanza massima di 10 km, ricevendo una eventuale\nrisposta e riportandola al mago.');
INSERT INTO incantesimi VALUES (79,'Patto Demoniaco (Haflain)',201,6,1,'m',1,3,NULL,0,NULL,'N',NULL,'Con questo incantesimo il mago può, grazie al demone persuasore, obbligare\ntutti coloro che si trovano alla distanza massima di 1 metro e nell\'area di\n1 metro di raggio, ad eseguire un ordine a suo piacimento, se questi non realizzano\nun TV a difficoltà 20. Per tutte le vittime l\'ordine è lo stesso.');
INSERT INTO incantesimi VALUES (80,'Pelle robusta (Tsu Nyao)',302,6,1,'target',0,7,NULL,0,NULL,'N',NULL,'La pelle del target si ingrossa e si ricopre di escrescenze cornee che la rendono\ndura e dotata di 1 PP, per 7 minuti.');
INSERT INTO incantesimi VALUES (81,'Pelle viscida (Abludar)',12,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Il target viene rivestito da uno strato di liquido viscoso e scivoloso che gli\nconferisce un bonus di +5 al TOT della Specifica di AM ``divincolarsi\'\'.');
INSERT INTO incantesimi VALUES (82,'Portatore di dolore (Koim)',508,6,1,'target',0,15,NULL,0,NULL,'N',NULL,'Il demone conferisce al target un bonus di +5 all\'abilità Torture per 15\nminuti.');
INSERT INTO incantesimi VALUES (83,'Possesso diabolico (Behemoth)',202,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'L\'usufruitore si impossessa del corpo di un target per 3 minuti, se questi non\nrealizza un TV a difficoltà 20.');
INSERT INTO incantesimi VALUES (84,'Protezione dai Demoni I',403,6,3,'m',4,3,NULL,0,NULL,'N',NULL,'Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un\'area\ndi 3 metri di raggio all\'interno della quale i Demoni di potenza uguale o inferiore\na 9 non possono entrare se non realizzando un TV a difficoltà 19. Realizzando\nil TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per\nogni metro all\'interno dell\'area, L\'incantesimo scompare se il mago attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (85,'Protezione dai Demoni II',403,6,3,'m',4,3,NULL,0,NULL,'N',NULL,'Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un\'area\ndi 3 metri di raggio all\'interno della quale i Demoni di potenza uguale o inferiore\na 19 non possono entrare se non realizzando un TV a difficoltà 29. Realizzando\nil TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per\nogni metro all\'interno dell\'area, L\'incantesimo scompare se il mago attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (86,'Protezione dai Demoni III',403,6,3,'m',4,3,NULL,0,NULL,'N',NULL,'Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un\'area\ndi 3 metri di raggio all\'interno della quale i Demoni di potenza uguale o inferiore\na 30 non possono entrare se non realizzando un TV a difficoltà 40. Realizzando\nil TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per\nogni metro all\'interno dell\'area, L\'incantesimo scompare se il mago attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (87,'Rostro (Morkooya)',4,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Il braccio del target viene rivestito da una superficie dura, rugosa e dotata\ndi punte acuminate, rendendo il danno base di Pugno pari a 1d4 + 2d6. L\'incantesimo\ndura 3 minuti.');
INSERT INTO incantesimi VALUES (88,'Schermo dell\'Oblio (Krisral)',303,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'Il Target viene protetto da uno schermo che para tutti gli attacchi fisici o\ndi Attacco/Danno Mirato con base TPD 20. L\'incantesimo dura 3 minuti.');
INSERT INTO incantesimi VALUES (89,'Seduttore (Azazel)',12,6,1,'target',0,15,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +5 all\'abilità Sedurre per 15 minuti.');
INSERT INTO incantesimi VALUES (90,'Sguardo di fuoco (Ayperos)',3,6,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Gli occhi del target saranno modificati in modo da vedere al buio. Gli occhi\nbrilleranno di una sinistra luce rossastra. L\'incantesimo dura a concentrazione\npiù 3 minuti.');
INSERT INTO incantesimi VALUES (91,'Sottomissione Demoni I',401,6,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di sottomettere ai propri ordini un demone di potenza massima pari\na 9 per 3 minuti. Il mago può impartirgli ordini se vince un confronto\ndi TV con esso se è un essere errante, o con chi lo domina se è controllato..');
INSERT INTO incantesimi VALUES (92,'Sottomissione Demoni II',401,6,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di sottomettere ai propri ordini un demone di potenza massima pari\na 19 per 3 minuti. Il mago può impartirgli ordini se vince un confronto\ndi TV con esso se è un essere errante, o con chi lo domina se è controllato..');
INSERT INTO incantesimi VALUES (93,'Sottomissione Demoni III',401,6,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di sottomettere ai propri ordini un demone di potenza massima pari\na 30 per 3 minuti. Il mago può impartirgli ordini se vince un confronto\ndi TV con esso se è un essere errante, o con chi lo domina se è controllato..');
INSERT INTO incantesimi VALUES (94,'Sparizione (Gusartan)',9,6,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Teletrasporta il target a 100 metri di distanza in un punto in cui il demonologo\nè già stato. Il target deve pesare al massimo 90 kg ed avere non più\ndi 100 kg di equipaggiamento. Il target pu\'o subire danni a discrezione\ndel Master se il punto di destinazione \'e inagibileo gi\'a occupato.');
INSERT INTO incantesimi VALUES (95,'Suggeritore (Wala)',509,6,1,'target',0,3,'concentrazione',0,NULL,'N',NULL,'Il target resterà in contatto col demone suggeritore, facendo aumentare\ndi +1 la caratteristica CON, per il tempo in cui il mago terrà la concentrazione\npiù 3 minuti.');
INSERT INTO incantesimi VALUES (96,'Tentacoli (Belfagor)',310,6,1,'target',0,3,NULL,0,NULL,'N',NULL,'L\'usufruitore viene ricoperto da piccolissimi tentacoli che gli permettono di\ndimezzare tutti i danni da botta, da punta e da taglio, compresi quelli prodotti\ndagli incantesimi di Attacco/Danno Mirato, che gli vengono inflitti.');
INSERT INTO incantesimi VALUES (97,'Tentazione (Schax)',220,6,1,'m',1,3,NULL,0,NULL,'N',NULL,'Mostra alle vittime situate in un\'area di 1 metro di raggio distante fino\na 1 metro dal mago immagini suadenti e ammaliatrici, che verranno percepite\nanche con tatto, olfatto, udito. Un TOSS a difficoltà 20 renderà consapevoli\nle vittime che le immagini non sono reali. In seguito, un TV a difficoltà\n20 potrà farle scomparire.');
INSERT INTO incantesimi VALUES (98,'Tipografo (Pruslas)',505,6,1,'target',0,NULL,'permanente',0,NULL,'N','1d6 ore','Produce 30 kg di fogli di carta in cui è stampato un breve messaggio o\nun semplice disegno schematico. Le stampe vengono terminate in 1d6 ore e sono\npermanenti.');
INSERT INTO incantesimi VALUES (99,'Violinista (Shentsow)',104,6,2,'m',10,NULL,NULL,0,NULL,'N',NULL,'Pizzica i nervi delle vittime che si trovano in un\'area di 2 metri di raggio\ndistante fino a 10 metri dal target come fossero corde di violino, causandone\nlo stordimento (inabilitazione per il round in corso e quello successivo).');
INSERT INTO incantesimi VALUES (100,'Zanna di luce (Guang Ya)',102,6,1,'target',7,NULL,NULL,0,NULL,'N',NULL,'Un demone dalla forma della testa di un serpente luminescente infligge 2d6 PV/PSC\ndi danno ad un target che si trova a massimo 7 metri dal mago. Il TPC è\npari a 12.');
INSERT INTO incantesimi VALUES (101,'Ali',3,5,1,'target',0,15,NULL,0,NULL,'N',NULL,'Fa nascere dalla schiena del target grandi ali di corvo che gli consentono\ndi volare ad una velocità massima pari a 4 volte la sua velocità in\ncorsa per 15 minuti.');
INSERT INTO incantesimi VALUES (102,'Armiere',1,5,1,'target',0,11,NULL,0,NULL,'N',NULL,'Crea un\'Arma da Taglio, da Botta o in Asta, \ncomposta da un solo pezzo di osso o legno, per 11 minuti.');
INSERT INTO incantesimi VALUES (103,'Artiglio della tigre',4,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'Trasforma la mano del target in un artiglio di tigre, capace di infliggere 4d6\nPV/PSC di danno, più eventuali danni addizionali, se si colpisce il target.');
INSERT INTO incantesimi VALUES (104,'Aspide',103,5,1,'',1,NULL,NULL,0,NULL,'N',NULL,'Uccide istantaneamente per avvelenamento le vittime poste entro un metro di\ndistanza dal mago ed in un area di un metro di raggio, se queste non realizzano\nun TR a difficoltà 20.');
INSERT INTO incantesimi VALUES (105,'Assorbimento',305,5,2,'',0,3,NULL,0,NULL,'N',NULL,'Manifesta una barriera di petali di rosa che assorbe 3d6 PV di danno causato\nda incantesimi di Attacco/Danno netto. I petali permangono per 3 minuti.');
INSERT INTO incantesimi VALUES (106,'Barriera Antimagia',301,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea attorno al Mago una barriera antimagia, che si manifesta come un intrico\ndi edere, e che ha una base Antimagia pari ai 25. La barriera dura per 3 minuti.\n');
INSERT INTO incantesimi VALUES (107,'Branchie',3,5,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'');
INSERT INTO incantesimi VALUES (108,'Camaleonte',5,5,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Cambia il colore di un target di 90 kg di peso massimo con 100 kg massimo di\ncarico rendendolo simile a quello dell\'ambiente circostante, per la durata della\nconcentrazione, più ulteriori 3 minuti quando questa viene persa. Il target\npotrà essere individuato realizzando un TOSS a difficoltà 16');
INSERT INTO incantesimi VALUES (109,'Cambia Dimensioni',14,5,1,'target',10,3,NULL,0,NULL,'N',NULL,'Consente di aumentare o ridurre di 4 volte le dimensioni di un, un essere vivente\nche pesi fino a 90 kg e fino a 300 kg di materia inerte (legno, osso o comunque\nmateriali facenti parte del dominio di stregoneria) se questo si trova entro\n10 metri e non realizza un TR a difficoltà 24.');
INSERT INTO incantesimi VALUES (110,'Capanna',1,5,1,'',1,NULL,'permanente',0,NULL,'N',NULL,'Crea una capanna di foglie e piante. La capanna è permanente.');
INSERT INTO incantesimi VALUES (111,'Carapace',302,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'');
INSERT INTO incantesimi VALUES (112,'Conoscenza',508,5,1,'target',0,7,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +10 all\'abilità Conoscere Animali Magici\nper 7 minuti.\n');
INSERT INTO incantesimi VALUES (113,'Controllo Animali Magici I',401,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Animale Magico di potenza massima 7 per 3 minuti.\nPerchè il controllo abbia luogo, il mago deve vincere un confronto di TV\ncon la creatura se questa è una creatura errante o realizzare un TV maggiore\ndel TV effettuato da colui che ne detiene il controllo.');
INSERT INTO incantesimi VALUES (114,'Controllo Animali Magici II',401,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Animale Magico di potenza massima 14 per 3 minuti.\nPerchè il controllo abbia luogo, il mago deve vincere un confronto di TV\ncon la creatura se questa è una creatura errante o realizzare un TV maggiore\ndel TV effettuato da colui che ne detiene il controllo.');
INSERT INTO incantesimi VALUES (115,'Controllo Animali Magici III',401,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Animale Magico di potenza massima 21 per 3 minuti.\nPerchè il controllo abbia luogo, il mago deve vincere un confronto di volontà\ncon la creatura se questa è una creatura errante o realizzare un TV maggiore\ndel TV effettuato da colui che ne detiene il controllo.');
INSERT INTO incantesimi VALUES (116,'Controllo Liane',6,5,1,'target',0,7,NULL,0,NULL,'N',NULL,'Permette di spostare una liana, una fune e simili pesante fino a 100 Kg alla\nvelocità di 10 km/h per 7 minuti. La fune ha FOR 2 perciò può\nsopportare sforzi solo se assicurata a sostegni o se annodata.');
INSERT INTO incantesimi VALUES (117,'Cura animale',309,5,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Cura 3d6 PV/PSC di danno, lasciando però le tracce dell\'avvenuta cura facendo\nassumere le sembianze del corpo di un animale alle parti interessate dalla cura;\nad esempio, su una ferita può restare una cicatrice squamosa come la pelle\ndi un pesce, su un\'ustione può crescere pelo, etc.');
INSERT INTO incantesimi VALUES (118,'Delfino',12,5,1,'target',0,15,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +15 all\'abilità Nuotare per 15 minuti.\n');
INSERT INTO incantesimi VALUES (119,'Dissimulazione',5,5,1,'target',0,7,NULL,0,NULL,'N',NULL,'Rende il target del peso massimo di 100 kg con 90 kg di carico massimo, totalmente\ntrasparente, e quindi quasi invisibile (individuabile con TOSS a difficoltà\n25), per 7 minuti.\n');
INSERT INTO incantesimi VALUES (120,'Fieno',1,5,1,'target',10,3,NULL,0,NULL,'N',NULL,'Crea una balla di fieno pesante 120 kg entro una distanza di 10 metri dallo\nstregone. Il fieno scompare dopo 3 minuti');
INSERT INTO incantesimi VALUES (121,'Fuga',9,5,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Teletrasporta 1 target di massimo 90 kg con 100 kg massimo di equipaggiamento\na 100 mt di distanza. Al posto del target appatirà una nube di polline.\nIl target può subire danni a discrezione del MAster.');
INSERT INTO incantesimi VALUES (122,'Fulmine',101,5,2,'m',10,NULL,NULL,0,3,'Y',NULL,'Un fulmine che parte dal mago infligge 4d6 PV (più eventuali Danni Addizionali\nda ustione) di danno netto su un\'area di 2 metro di raggio, investendo anche\ntutti coloro che si trovano nella traiettoria. Il fulmine potrà percorrere\nun massimo di 10 metri. Se il fulmine sbatte contro oggetti solidi come muri\no rocce, rimbalza a specchio per un massimo di tre volte\ne prosegue la sua corsa. E\' necessario effettuare un tiro Calcolare per valutare\nla traiettoria dei fulmine dopo il rimbalzo. A seconda del rimbalzo oggetti\ne esseri potranno essere colpiti più volte, subendo più volte il danno.\nGli esseri colpiti potranno dimezzare il danno realizzando un TR a difficoltà\n18.');
INSERT INTO incantesimi VALUES (123,'Furto del corpo',202,5,1,'target',4,3,NULL,0,NULL,'N',NULL,'Lo stregone si impossessa per 3 minuti del corpo di 1 target che si trova a\nmeno di 4 metri di distanza, se questo non realizza un TV a difficoltà\n20.');
INSERT INTO incantesimi VALUES (124,'Guscio chitinoso',302,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'L\'incantesimo riveste il target di un guscio chitinoso simile a quello dei coleotteri\nconferendogli 3 PP da danni fisici o magici da Attacco/ Danno Mirato per 3 minuti.\n');
INSERT INTO incantesimi VALUES (125,'Istrice',102,5,1,'target',7,NULL,NULL,0,NULL,'N',NULL,'Fa partire dal mago una spina acuminata capace di infliggere 2d6 PV/PSC di danno\nmirato ad un target distante fino a 7 metri. La base TPC è pari a 20.');
INSERT INTO incantesimi VALUES (126,'Malia',201,5,1,'target',4,3,NULL,0,NULL,'N',NULL,'Un target che dista al massimo 4 metri dallo stregone e che non realizza un\nTV a difficoltà 20 si innamorerà all\'istante di un essere a scelta\ndel mago. Il TV potrà essere penalizzato o favorito a seconda di precedenti\naffinità tra il target e l\'essere scelto, a discrezione del Master. L\'innamoramento\ndurerà 3 minuti, dopodichè... chissà?');
INSERT INTO incantesimi VALUES (127,'Mantide',4,5,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Crea delle escrescenze chitinose sugli avambracci del target, capaci di infliggere\n3d6 PSC/PV di danno da taglio oltre al danno infliggibile con CAC. Le escrescenze\npermangono per 3 minuti e vanno utilizzate con CAC.');
INSERT INTO incantesimi VALUES (128,'Medusa',102,5,1,'target',7,NULL,NULL,0,NULL,'N',NULL,'Fa partire un filamento urticante capace di infliggere su un target posto ad\nuna distanza massima di 7 metri un danno pari a 2d6 PV/PSC più danni addizionali\nda ustione. La base TPC è pari a 10. Danni addizionali: da ustione');
INSERT INTO incantesimi VALUES (129,'Occhio di falco',12,5,1,'target',0,7,NULL,0,NULL,'N',NULL,'Conferisce all\'occhio del target la precisione dell\'occhio di un uccello rapace,\nconferendogli +15 all\'abilità ADT per 7 minuti.');
INSERT INTO incantesimi VALUES (130,'Parlare agli animali',502,5,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di dialogare con un animale distante fino a 4 metri dallo stregone\nper 3 minuti. l\'animale risponderà arbitrariamente realizzando un TV a\ndifficoltà 10 per ogni domanda. Fallendolo, risponderà sinceramente.');
INSERT INTO incantesimi VALUES (131,'Parlare alle piante',504,5,2,'d6 target',0,NULL,NULL,0,NULL,'N',NULL,'Consente di effettuare 2d6 domande alle piante. Le piante risponderanno in base\nalla loro esperienza degli ultimi 10 anni,comunicando con lo stregone attraverso\nil profumo.');
INSERT INTO incantesimi VALUES (132,'Protezione Animali Magici I',403,5,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio all\'interno della\nquale gli Animali Magici di potenza inferiore o uguale a 7 non possono entrare\nse non realizzando un TV a difficoltà 17. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali ci si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (133,'Protezione Animali Magici II',403,5,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio all\'interno della\nquale gli Animali Magici di potenza inferiore o pari a 17 non possono entrare\nse non realizzando un TV a difficoltà 27. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali ci si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (134,'Protezione Animali Magici III',403,5,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago un\'area di 3 metri di raggio all\'interno della\nquale gli Animali Magici di potenza inferiore o uguale a 21 non possono entrare\nse non realizzando un TV a difficoltà 31. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali ci si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (135,'Rampicante',8,5,1,'m',1,3,NULL,0,NULL,'N',NULL,'Fa spuntare da terra una pianta capace di crescere istantaneamente che con i\nsuoi viticci solleva massimo 120 kg di massa vivente e 300 kg di massa inerte\nalla velocità di 10 km/h. La pianta si origina da un punto distante fino\nad un metro dal mago e potrà sollevare oggetti in un\'area di 1 metro\ndi raggio. Dopo 3 minuti la pianta scompare istantaneamente riducendosi in polvere.');
INSERT INTO incantesimi VALUES (136,'Richiama Animali Magici I',402,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Richiama un Erkythow o un Animale Magico di potenza inferiore, consentendo al\nmago di impartirgli ordini per 3 minuti se vince un confronto di TV.');
INSERT INTO incantesimi VALUES (137,'Richiama Animali Magici II',402,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Richiama un Drago Cucciolo o un Animale Magico di potenza inferiore, consentendo\nal mago di impartirgli ordini per 3 minuti se vince un confronto di TV.');
INSERT INTO incantesimi VALUES (138,'Richiama Animali Magici III',402,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Richiama un\'amhunta o un Animale Magico di potenza inferiore, consentendo\nal mago di impartirgli ordini per 3 minuti se vince un confronto di TV.');
INSERT INTO incantesimi VALUES (139,'Riflessi felini',13,5,1,'target',0,7,NULL,0,NULL,'N',NULL,'Aumenta i riflessi e l\'agilità del target conferndogli un bonus di +3 all\'aGI\nper 7 minuti');
INSERT INTO incantesimi VALUES (140,'Rospo',3,5,1,'target',4,NULL,'permanente',0,NULL,'N','1d4 settimane','Trasforma permanentemente un target umanoide distante fino a 4 metri in un grosso\nrospo se questi non realizza un TR a difficoltà 31. Il target potrà\ntornare normale in seguito ad un evento qualunque deciso dal mago (ad es. il\nbacio di una principessa). La trasformazione avviene gradualmente\nin 1d4 settimane.');
INSERT INTO incantesimi VALUES (141,'Salice',103,5,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Uccide un target che si trova alla distanza massima di 4 metri dallo stregone,.\ntrasformandolo in un grande Salice Piangente, se il target non realizza un TR\na difficoltà 20. Le vittime possono essere riportate in vita con un incantesimo\ndi Resurrezione.');
INSERT INTO incantesimi VALUES (142,'Scossa Tellurica',101,5,15,'m',0,NULL,NULL,1,NULL,'N',NULL,'Provoca una scossa tellurica con epicentro il mago, che provoca 6d6 (più\neventuali danni addizionali da Fratture) di danno a tutti coloro che si trovano\nin un\'area di 15 metri di raggio. Il Mago non subisce alcun danno. Le vittime\npossono dimezzare i danni realizzando un TR a difficoltà 23. Danni addizionali: da Frattura.');
INSERT INTO incantesimi VALUES (143,'Sfera di cristallo',503,5,1,'target',1,3,NULL,0,NULL,'N',NULL,'Prevede correttamente gli eventi che accadranno ad una persona o ad un oggetto\nche sta ad 1 metro dal mago nelle 24 ore successive. La conoscenza degli eventi\npuò cambiarne il corso.\n');
INSERT INTO incantesimi VALUES (144,'Spine',101,5,3,'m',10,NULL,NULL,0,NULL,'N',NULL,'Crea delle spine che si ergono verticalmente in un\'area di 3 metri di raggio\nposta entro 10 metri dallo Stregone e capaci di infliggere 7d6 PV di danno a\ntutti gli esseri presenti nell\'area. Le spine secernono un acido urticante (Danno\nAddizionale da Ustione). I danni diretti possono essere dimezzati dalle vittime\nrealizzando un TR a difficoltà 24.');
INSERT INTO incantesimi VALUES (145,'Spugna',310,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'Tuttàttorno al corpo del target si forma un rivestimento spugnoso che attutisce\ni colpi dividendo per 2 i danni fisici e magici da Attacco/Danno mirato subiti.\nL\'incantesimo dura 3 minuti.');
INSERT INTO incantesimi VALUES (146,'Squalo',4,5,1,'target',0,3,NULL,0,NULL,'N',NULL,'Ricopre un\'arma da taglio o da botta di file di denti triangolari simili\na quelli dello squalo. Il danno dell\'arma aumenta di 2d6.La trasformazione dell\'arma\ndura per 3 minuti. L\'incantesimo funziona a contatto.');
INSERT INTO incantesimi VALUES (147,'Tempesta di fulmini',101,5,4,'m',10,NULL,NULL,0,NULL,'N',NULL,'Una scarica di fulmini che viene dall\'alto infligge 6d6 PV di danno netto su\nun\'area di 3 metri di raggio distante fino a 10 metri dal mago. I targets\npossono dimezzare i danni realizzando un TR a difficoltà 22. L\'incantesimo\ninfligge danni addizionali ustione.');
INSERT INTO incantesimi VALUES (148,'Torpedine',102,5,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Infligge al tocco una scarica elettrica che provoca 3d6 PV/PSC di danno più\neventuali danni addizionali da ustione.');
INSERT INTO incantesimi VALUES (149,'Ululato',216,5,2,'m',10,3,NULL,0,NULL,'N',NULL,'L\'incantesimo farà udire un ululato a tutti coloro che si trovano in un\'area\ndi 2 metri di raggio posta, al momento dell\'attivazione, a 10 metri o meno dallo\nstregone. La riuscita di un TOSS a difficoltà 20 farà capire alle\nvittime che si è trattato solo di un\'illusione.');
INSERT INTO incantesimi VALUES (150,'Zampe di mosca',3,5,1,'target',0,15,NULL,0,NULL,'N',NULL,'Trasforma gli arti del target in zampe di mosca, rendendolo capace di arrampicarsi\npraticamente su qualunque superficie, o addirittura di restare appeso a volte\no soffitti, come le mosche. L\'incantesimo dura fino a 15 minuti ed agisce a\ncontatto');
INSERT INTO incantesimi VALUES (151,'Barriera psichica I',301,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Difende il target da tutti gli incantesimi a lui diretti nel tempo di 3 minuti,\ncon una Base Antimagia di 10.');
INSERT INTO incantesimi VALUES (152,'Barriera psichica II',301,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Difende il target da tutti gli incantesimi nel tempo di 3 minuti, con una Base\nAntimagia di 20.');
INSERT INTO incantesimi VALUES (153,'Buio',215,3,4,'m',4,3,NULL,0,NULL,'N',NULL,'Illude i target che si trovano in un\'area di 4 metri di raggio sita fino\na 4 metri dal mago che la luce sia scomparsa. I target che realizzeranno un\nTOSS a difficoltà 20 si renderanno conto che il buio è un\'illusione\ne potranno far tornare la char`\"{}lucechar`\"{} realizzando un TV a difficoltà\n20. Il buio dura 3 minuti.');
INSERT INTO incantesimi VALUES (154,'Cecità',215,3,1,'target',4,NULL,'permanente',0,NULL,'N',NULL,'Provoca la cecità in 1 target posto ad una distanza massima di 4 metri\nilludendolo di essere perennemente al buio. Se il target realizza un TOSS a\ndifficoltà 25 si accorgerà che la cecità è un\'illusione\ne potrà riprendere la vista realizzando un TV a difficoltà 25.');
INSERT INTO incantesimi VALUES (155,'Concretizzazione',2,3,1,'target',1,3,NULL,0,NULL,'N',NULL,'Crea un essere vivente con massimo 30 Punti CAT richiamando dalla dimora onirica\nuna raffigurazione di un essere vivente.');
INSERT INTO incantesimi VALUES (156,'Concretizzazione oggetti',1,3,1,'target',1,3,NULL,0,NULL,'N',NULL,'Crea un oggetto richiamando dalla dimora onirica una raffigurazione non vivente\ndi un oggetto di massimo 30 kg di peso, di complessità massima 8. L\'oggetto\nsparisce dopo 3 minuti.');
INSERT INTO incantesimi VALUES (157,'Controllo Creatura Onirica I',401,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di una creatura onirica di potenza\nmassima 6, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè\nil controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura\nse questa è una creatura errante, o realizzare un TV maggiore del TV effettuato\nda colui che ne ha il controllo.');
INSERT INTO incantesimi VALUES (158,'Controllo Creatura Onirica II',401,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di una creatura onirica di potenza\nmassima 15, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè\nil controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura\nse questa è una creatura errante o realizzare un TV maggiore del TV effettuato\nda colui che ne ha già il controllo.');
INSERT INTO incantesimi VALUES (159,'Controllo Creatura Onirica III',401,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di una creatura onirica di potenza\nmassima 23, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè\nil controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura\nse questa è una creatura errante o realizzare un TV maggiore del TV effettuato\nda colui che ha il controllo della creatura stessa.');
INSERT INTO incantesimi VALUES (160,'Dolore',101,3,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Provoca una contrazione involontaria brusca della muscolatura del target causando\nuna dolorosa fitta che provoca 3d6 PV di danno. Il danno può essere dimezzato\nrealizzando un TR a difficoltà 16.');
INSERT INTO incantesimi VALUES (161,'Evoca Essere Onirico I',402,3,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il mago richiama dalla dimora onirica un Braak, un Blink o un Greyant e gli\nimpartisce comandi, che la creatura onirica esegue al meglio delle sue possibilità,\na patto che il mago vinca un confronto di TV con l\'essere evocato. Perchè\nil richiamo riesca ci deve essere un adulto che dorme nel raggio di 1000 metri.');
INSERT INTO incantesimi VALUES (162,'Evoca Essere Onirico II',402,3,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il mago richiama dalla dimora onirica un Bleargh, un Succube, un Tolden, un\nMoae o un Kartenius (o una creatura onirica di potenza inferiore) e gli impartisce\ncomandi, che la creatura esegue al meglio delle sue possibilità, a patto\nche il mago vinca un confronto di TV con l\'essere evocato. Perchè il richiamo\nriesca ci deve essere un anziano che dorme nel raggio di 1000 metri.');
INSERT INTO incantesimi VALUES (163,'Evoca Essere Onirico III',402,3,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il mago richiama dalla dimora onirica un Krull o un Benair (o una creatura onirica\ndi potenza inferiore) e gli impartisce comandi, che la creatura esegue al meglio\ndelle sue possibilità, a patto che il mago vinca un confronto di TV con\nl\'essere evocato. Perchè il richiamo riesca ci deve essere un adolescente\nche dorme nel raggio di 1000 metri.\n');
INSERT INTO incantesimi VALUES (164,'Fetore',12,3,4,'m',0,3,NULL,0,NULL,'N',NULL,'Convince i target di sentire un odore pessimo, come di uova marce ammuffite.\nIl risultato è un malus di -3 all\'abilità Fiutare per 3 minuti. I\ntarget possono sottrarsi agli effetti dell\'incantesimo realizzando un TR a difficoltà\n13.');
INSERT INTO incantesimi VALUES (165,'Fitta',101,3,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Provoca una brusca contrazione involontaria della muscolatura del target causando\nuna dolorosa fitta che provoca 1d6 PV di danno. Il danno può essere dimezzato\nrealizzando un TR a difficoltà 12.');
INSERT INTO incantesimi VALUES (166,'Follia',203,3,1,'target',4,NULL,'permanente',2,NULL,'N',NULL,'Toglie 10 Punti Psiche ad un target che non realizza un TV a difficoltà\n22. La perdita potrà essere curata anche con l\'abilità Medicina.');
INSERT INTO incantesimi VALUES (167,'Ilarità',13,3,1,'m',0,NULL,NULL,-1,NULL,'N',NULL,'Suscita una sensazione di ilarità nei target che non realizzano un TV a\ndifficoltà 15 causando un malus di -1 alla CONC per 3 minuti a causa del\ngran ridere.');
INSERT INTO incantesimi VALUES (168,'Ipnosi I',201,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Fa compiere al target che non realizza un TV a difficoltà 20 un un gesto\nqualsiasi, anche prolungato, fino a 3 minuti. Il target deve distare 4 metri\no meno dal mago.');
INSERT INTO incantesimi VALUES (169,'Ipnosi II',201,3,3,'m',4,3,NULL,0,NULL,'N',NULL,'Fa compiere ai target situati all\'interno di un\'area di 3 metri di raggio,\nche non realizzano un TV a difficoltà 25 un un gesto qualsiasi, anche prolungato,\nfino a 3 minuti. Il centro dell\'area deve distare 4 metri o meno dal mago. Il\ngesto è lo stesso per tutti i target.');
INSERT INTO incantesimi VALUES (170,'Ipnosi III',201,3,6,'m',11,3,NULL,0,NULL,'N',NULL,'Fa compiere ai target situati all\'interno di un\'area di 6 metri di raggio,\nche non realizzano un TV a difficoltà 30 un un gesto qualsiasi, anche prolungato,\nfino a 3 minuti. Il centro dell\'area deve distare 11 metri o meno dal mago. Il\ngesto è lo stesso per tutti i target.');
INSERT INTO incantesimi VALUES (171,'Istigazione al suicidio',103,3,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Il target che non realizza un TV a difficoltà 20 si toglierà la vita\nil prima possibile. L\' incantesimo agisce su un target che si trova a 1 metro\no meno dal mago. Per impedire al target di suicidarsi è necessario effettuare \nun controincantesimo a DA 35.');
INSERT INTO incantesimi VALUES (172,'Lettura del pensiero',504,3,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Legge il \"pensiero superficiale\" (cioè quello corrente)\ndalla mente di un target, posto fino a 4 metri di distanza dal mago. Il target\npuò evitare l\'incantesimo realizzando un TV a difficoltà 20.');
INSERT INTO incantesimi VALUES (173,'Luci colorate',205,3,4,'m',0,3,NULL,0,NULL,'N',NULL,'Genera un effetto luminoso colorato nell\'area di 4 metri a scelta del mago visibile\nda tutti. L\'effetto è evidentemente illusorio, e chiunque lo desideri (il\nTV riesce automaticamente) potrà far scomparire l\'effetto dalla sua vista.');
INSERT INTO incantesimi VALUES (174,'Lussuria',201,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Risveglia un\'irresistibile frenesia nel target che non realizza un TV a difficoltà\n25.');
INSERT INTO incantesimi VALUES (175,'Panico',203,3,10,'m',0,7,NULL,0,NULL,'N',NULL,'Causa una sensazione di terrore nei target situati all\'interno di un\'area\ndi 10 metri di raggio attorno all\'usufruitore, tale da far impazzire per 7 minuti\n(-20 alla Psiche) i target che non realizzano un TV a difficoltà 30.\n');
INSERT INTO incantesimi VALUES (176,'Paralisi I',201,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Impone ai target che non realizzano un TV a difficoltà 15 di restare completamente\nimmobili per 3 minuti. I target potranno riprendere a muoversi se attaccati\nrealizzando un TV a difficoltà 15.');
INSERT INTO incantesimi VALUES (177,'Paralisi II',201,3,3,'m',7,3,NULL,0,NULL,'N',NULL,'Impone a tutti gli esseri in un\'area di 3 metri di raggio con centro entro\n7 metri dal mago, che non realizzano un TV a difficoltà 25 di restare completamente\nimmobili per 3 minuti. I target potranno riprendere a muoversi se attaccati\nrealizzando un TV a difficoltà 25.');
INSERT INTO incantesimi VALUES (178,'Paura',203,3,1,'d6 target',7,3,NULL,0,NULL,'N',NULL,'Infonde in 1d6 di target una sensazione di paura generalizzata che comporta\nun malus di -10 alla Psiche per 3 minuti, se i target non realizzano un TV a\ndifficoltà 20.');
INSERT INTO incantesimi VALUES (179,'Pazzia',203,3,1,'target',0,NULL,'permanente',0,NULL,'N',NULL,'Rende pazzo un target che viene toccato dal mago, sottraendogli permanentemente\n15 punti Psiche se non realizza un TV a difficoltà 25.');
INSERT INTO incantesimi VALUES (180,'Psicosi',203,3,1,'target',1,NULL,'permanente',0,NULL,'N',NULL,'Induce in un target che non realizza un TV a difficoltà 20 una psicosi che comporta la perdita permanente di 10 punti Psiche. La psicosi può essere curata con l\'abilità Medicina.');
INSERT INTO incantesimi VALUES (181,'Protezione Incubi I',403,3,3,'m',0,3,NULL,4,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale le creature oniriche di potenza inferiore o uguale a 6 non possono entrare\nse non realizzando un TV a difficoltà 20. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.\n');
INSERT INTO incantesimi VALUES (182,'Protezione Incubi II',403,3,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale le creature oniriche di potenza inferiore o uguale a 15 non possono entrare\nse non realizzando un TV a difficoltà 25. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.\n');
INSERT INTO incantesimi VALUES (183,'Protezione Incubi III',403,3,3,'m',0,3,NULL,-3,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale le creature oniriche di potenza inferiore o pari a 23 non possono entrare\nse non realizzando un TV a difficoltà 30. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 3 minuti.\n');
INSERT INTO incantesimi VALUES (184,'Psicosi',203,3,1,'target',1,NULL,'permanente',0,NULL,'N',NULL,'Induce in un target che non realizza un TV a difficoltà 20 una psicosi\nche comporta la perdita permanente di 10 punti Psiche. La psicosi può essere\ncurata con l\'abilità Medicina.');
INSERT INTO incantesimi VALUES (185,'Quadruplicazione',205,3,6,'m',10,7,NULL,0,NULL,'N',NULL,'Vengono create tre immagini illusorie esattamente uguali al mago, che si possono\nmuovere all\'interno di un\'area di 6 metri di raggio distante fino a 10 metri\ndal mago stesso. Realizzando un TOSS a difficoltà 25 ci si accorgerà\ndel miraggio, e lo si potrà far scomparire dalla propria vista realizzando\nun TV a 25. Il miraggio permane per 7 minuti.');
INSERT INTO incantesimi VALUES (186,'Realtà virtuale',103,3,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Proietta la mente del target in un mondo onirico virtuale a scelta del mago,\ncausandone di fatto la morte (coma irreversibile) se questi non realizza un\nTV a difficoltà 20. L\'incantesimo è permanente ma reversibile (dal\nmondo onirico virtuale si può ritornare effettuando lo stesso incantesimo\nsul corpo). L\'uccisione del corpo inerte provoca la morte definitiva del target,\ndalla quale si può resuscitare normalmente.');
INSERT INTO incantesimi VALUES (187,'Scomparsa totale',220,3,10,'m',0,3,NULL,0,NULL,'N',NULL,'Il target non viene visto, udito nè percepito con nessuno dei sensi da\nnessun essere che sta ad una distanza inferiore a 10 metri. La presenza del\nmago può essere percepita con un TOSS a difficoltà 30. Un successivo\nTV a difficoltà 30 renderà visibile il mago agli occhi di chi lo realizza.\nL\'incantesimo può essere lanciato sul mago stesso o su un target a contatto.\n');
INSERT INTO incantesimi VALUES (188,'Scudo Psichico',310,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Genera attorno al target uno scudo di energia psichica attivo per 3 minuti che\ndivide per 5 tutti i danni da punta, taglio e botta e da Attacco/Danno mirato.\n');
INSERT INTO incantesimi VALUES (189,'Sdoppiamento',220,3,10,'m',0,3,NULL,0,NULL,'N',NULL,'Qualunque essere situato a meno di 10 metri dal mago, vedrà una immagine\nillusoria, perfettamente identica anche al tatto, all\'olfatto e all\'udito, del\nmago, a meno che il target non realizzi un TOSS a difficoltà 30, a cui\npotrà far seguito un TV di pari difficoltà per dissolvere l\'illusione.\nL\'immagine permane per 3 minuti.');
INSERT INTO incantesimi VALUES (190,'Sfera sonica',101,3,3,'m',4,NULL,NULL,0,NULL,'N',NULL,'Trasmette telepaticamente un suono acutissimo che causa convulsioni ai target\nsituati all\'interno di un\'area di 3 metri di raggio con centro situato a\n4 metri o meno dal mago. Le convulsioni causano 3d6 PV di danno, dimezzabili\ncon un TV a difficoltà 16.');
INSERT INTO incantesimi VALUES (191,'Sonno I',201,3,1,'target',4,3,NULL,0,NULL,'N',NULL,'Addormenta un target fino a 4 metri di distanza per 3 minuti. Al termine dei\n3 minuti il target continuerà a dormire per 1d8 ore se non viene svegliato.\nIl target può sottrarsi all\'incantesimo realizzando un TV a difficoltà\n15.');
INSERT INTO incantesimi VALUES (192,'Sonno II',201,3,1,'target',10,3,NULL,0,NULL,'N',NULL,'Addormenta un target fino a 10 metri di distanza per 3 minuti. Al termine dei\n3 minuti il target continuerà a dormire per 1d8 ore se non viene svegliato.\nIl target può sottrarsi all\'incantesimo realizzando un TV a difficoltà\n20.');
INSERT INTO incantesimi VALUES (193,'Sonno profondo',201,3,1,'target',4,NULL,'permanente',0,NULL,'N',NULL,'Addormenta permanentemente un target fino a 4 metri di distanza che non realizza\nun TV a difficoltà 20. L\'incantesimo può essere sciolto automaticamente\ndopo un certo evento o dopo un tempo a scelta del mago (es. dopo 100 anni o\nal bacio di un principe azzurro...)');
INSERT INTO incantesimi VALUES (194,'Stordimento',104,3,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Causa l\'inabilitazione di un target per stordimento per il round in corso e\nper quello successivo. Il target deve trovarsi a 4 metri o meno dal mago. L\'incantesimo\nnon ha effetto se il target realizza un TR a difficoltà 15.');
INSERT INTO incantesimi VALUES (195,'Telecinesi',6,3,2,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di spostare per 3 minuti fino a 2 oggetti (ciascuno di 100 kg di massa\nnon vivente e 90 kg di massa vivente) che si trovano inizialmente ad una distanza\nmassima di 4 metri dal mago, ad una velocità massima di 60 km/h. Esseri\nviventi si possono opporre all\'incantesimo realizzando un TV a difficoltà\n20.');
INSERT INTO incantesimi VALUES (196,'Telepatia',507,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Consente al target una comunicazione telepatica nei due sensi, sotto forma di\nchar`\"{}parolechar`\"{} con un essere che si trova a meno di 100 metri dal\ntarget. E\' necessario che il target e l\'essere con cui comunica parlino la stessa\nlingua, per capirsi. Il target è colui che inizia la comunicazione, e deve\ntrovarsi a contatto con il mago.');
INSERT INTO incantesimi VALUES (197,'Tempesta di frecce',101,3,1,'m',4,NULL,NULL,0,NULL,'N',NULL,'Fa credere agli esseri all\'interno di un\'area di 1 metro di raggio di essere\nvittima di una tempesta di frecce acuminate, causando 6d6 PV di danno. I danni\nsi manifesteranno realmente. Realizzando un TR a difficoltà 22 il danno\npotrà essere dimezzato.\n');
INSERT INTO incantesimi VALUES (198,'Velo d\'ombra',215,3,14,'m',0,3,'concentrazione',0,NULL,'N',NULL,'Rende il mago totalmente simile ad un\'ombra, rendendogli possibile nascondersi\ntotalmente al buio, agli occhi di coloro che si trovano a meno di 14 metri da\nlui. L\'incantesimo perdura per tutto il tempo durante il quale il mago focalizza\nla sua concentrazione sull\'incantesimo. Al momento della perdita di concentrazione\nl\'effetto di invisibiltà prosegue per 3 minuti. Un TOSS a difficoltà\n25 farà intuire ai target la presenza del mago e un successivo TV alla\nstessa difficoltà renderà visibile il mago agli occhi di chi lo realizza.\nIl TOSS potrà essere ripetuto ogni volta che il mago viene individuato\nattraverso rumori, odori o sensazioni tattili.');
INSERT INTO incantesimi VALUES (199,'Viaggio onirico',9,3,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Teletrasporta istantaneamente attraverso la Dimora Onirica il target (90 kg\n+ 100 kg di equipaggiamento) ad una distanza massima di 10 km in un punto in\ncui il target abbia dormito per almeno 1 ora\nIl target potrebbe subire danni all\'arrivo a discrezione del Master.');
INSERT INTO incantesimi VALUES (200,'Volontà',204,3,1,'target',0,3,NULL,0,NULL,'N',NULL,'Attribuisce ad un target un bonus di +2 alla VOLontà per 3 minuti, purché\nquesti sia a contatto col mago.');
INSERT INTO incantesimi VALUES (201,'Anime Protettrici',305,2,1,'m',0,3,NULL,0,NULL,'N',NULL,'Crea un vortice di Essenze attorno al Target, che assorbono 3d6 PV di danno\nprodotto dagli incantesimi di Attacco/Danno Netto. Il vortice ha effetto per\n3 minuti attorno un area di un metro di raggio avente come centro il Target.');
INSERT INTO incantesimi VALUES (202,'Asservimento Esseri del Limbo I',401,2,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un Essere del Limbo di potenza massima\n6, situato a massimo 4 metri di distanza dal mago, per 3 minuti. Perché il controllo\nabbia luogo, il mago deve vincere un confronto di TV con la creatura se questa\nè una creatura errante oppure realizzare un TV maggiore del TV effettuato\nda colui che ne detine il controllo.');
INSERT INTO incantesimi VALUES (203,'Asservimento Esseri del Limbo II',401,2,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un Essere del Limbo di potenza massima\n15, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè\nil controllo abbia luogo, il mago deve vincere un confronto di TV con la creatura\nse questa è una creatura errante oppure realizzare un TV maggiore del TV\neffettuato da colui che ne detiene il controllo.');
INSERT INTO incantesimi VALUES (204,'Asservimento Esseri del Limbo III',401,2,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare il comportamento di un Essere del Limbo di potenza massima\n21, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè\nil controllo abbia luogo, il mago deve vincere un confronto di TV con la creatura\nse questa è una creatura errante oppure realizzare un TV maggiore del TV\neffettuato da colui che ne detiene il controllo.');
INSERT INTO incantesimi VALUES (205,'Becchino',6,2,1,'m',3,NULL,NULL,0,NULL,'N',NULL,'Scava una fossa di circa 2 metri cubi (300 kg di terra) di forma qualsiasi su\nuna superfice non compatta (terra, sabbia ecc.).');
INSERT INTO incantesimi VALUES (206,'Catalessi',201,2,2,'m',10,3,NULL,0,NULL,'N',NULL,'Infonde negli esseri presenti in unàrea di 2 metri di raggio posta entro\n10 metri dal necromante un sonno profondissimo che dura 3 minuti. Dopo questo\ntempo, se il target non viene svegliato, continua a dormire per 2d6 ore. Il\ntarget può evitare gli effetti dell\'incantesimo realizzando un TV a difficoltà\n20.\n');
INSERT INTO incantesimi VALUES (207,'Decomposizione',101,2,3,'m',10,NULL,NULL,0,NULL,'N',NULL,'Provoca un rapido processo di decomposizione che infligge 6d6 PV di danno (più\neventuali danni addizionali da emorragia) a tutti gli esseri che si trovano\nin unàrea di 3 m di raggio distante fino a 10 m dal necromante. Si possono\ndimezzare i danni realizzando un TR a difficoltà 23.');
INSERT INTO incantesimi VALUES (208,'Denti del Vampiro',4,2,1,'target',0,3,NULL,0,NULL,'N',NULL,'Trasforma per 3 minuti i canini del Target in Denti da Vampiro che infliggono\n2d6 PV/PSC di Danno.');
INSERT INTO incantesimi VALUES (209,'Dismissione I',103,2,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà\n25 e che si trova ad una distanza massima di un 1 metro dal Necromante.\n');
INSERT INTO incantesimi VALUES (210,'Dismissione II',103,2,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà\n30, se questa si trova ad una distanza massima di un 1 metro dal Necromante.\n');
INSERT INTO incantesimi VALUES (211,'Dismissione III',103,2,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà\n35. La creatura deve trovarsi al massimo ad 1 metro di distanza dal Necromante.\n');
INSERT INTO incantesimi VALUES (212,'Dito I',102,2,1,'target',4,NULL,NULL,0,NULL,'N',NULL,'Crea un dito scheletrico acuminato in grado di colpire un bersaglio sino a 4\nmetri di distanza dal necromante con una base TPC di 15, che infligge 1d6 PV/PSC\ndi danno.');
INSERT INTO incantesimi VALUES (213,'Dito II',102,2,1,'target',10,NULL,NULL,0,NULL,'N',NULL,'Crea un dito scheletrico acuminato in grado di colpire un bersaglio sino a 10\nmetri di distanza dal necromante con una base TPC di 15, che infligge 2d6 PV/PSC\ndi danno.\n');
INSERT INTO incantesimi VALUES (214,'Dito III',102,2,2,'m',10,NULL,NULL,0,NULL,'N',NULL,'Infligge agli esseri posti entro unàrea di 2 metri di raggio distante fino\na 10 metri dal necromante 2d6 PV di danno (più eventuali danni addizionali\nda gelo). La base TPC è 20. L\'incantesimo colpisce separatamente ogni target\nin un punto del corpo a caso (Fantoccio).');
INSERT INTO incantesimi VALUES (215,'Esoscheletro',302,2,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea attorno al target unàrmatura composta da ossa che offre una protezione\npari a 3 PP per 3 minuti.\n');
INSERT INTO incantesimi VALUES (216,'Etereità',5,2,1,'target',0,11,NULL,0,NULL,'N',NULL,'Modifica la consistenza del target (fino a 90 kg di peso) e del suo equipaggiamento\n(fino a 100 kg di peso) rendendolo etereo, intangibile, traslucido, come i fantasmi.\nIl target può spostarsi nelle tre dimensioni come se nuotasse e passare\nattraverso stretti pertugi. Il target non può nè attaccare nè\npronunciare incantesimi ma è immune agli attacchi fisici.');
INSERT INTO incantesimi VALUES (217,'Evoca/Crea Esseri del Limbo I',402,2,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il Mago crea uno Zombo o uno Scheletro o richiama un Poltergeist o uno Spettro\n, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca\nun Confronto di TV con l\'Essere. Se questi vince il TV resta svincolato da qualsiasi\ncomando e non è più legato all\'evocatore. Alla fine della durata,\nse l\'Essere richiamato non viene rimandato nel limbo, è libero di agire\ndi sua volontà. L\'Essere Creato alla fine della durata è libero di\nscegliere se rimanere alle dipendenze del suo creatore o meno.');
INSERT INTO incantesimi VALUES (218,'Evoca/Crea Esseri del Limbo II',402,2,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il Mago crea una Mummia o richiama unànima, uno Spirito o un Viaggiatore\n, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca\nun confronto di TV con l\'Essere. Se questi vince il TV non è più legato\nall\'evocatore. Alla fine della durata, se l\'Essere richiamato non viene rimandato\nnel limbo, è libero di agire di sua volontà. L\'Essere Creato alla\nfine della durata è libero di scegliere se rimanere alle dipendenze del\nsuo creatore o meno.');
INSERT INTO incantesimi VALUES (219,'Evoca/Crea EsIeri del Limbo III',402,2,1,'target',1,3,NULL,0,NULL,'N',NULL,'Il Mago crea un Angelo Nero o richiama una Banshee, un Boia o un Messo , che\nsono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca un\nconfronto di TV con l\'Essere. Se questi vince il TV è svincolato da qualsiasi\ncomando e non è più legato all\'evocatore. Alla fine della durata,\nse l\'Essere richiamato non viene rimandato nel limbo, è libero di agire\ndi sua volontà. L\'Essere Creato alla fine della durata è libero di\nscegliere se rimanere alle dipendenze del suo creatore o meno.');
INSERT INTO incantesimi VALUES (220,'Fuoco fatuo',5,2,1,'target',0,11,NULL,0,NULL,'N',NULL,'Fa risplendere al tocco un target non vivente pesante fino a 100 kg di una luce\nspettrale azzurrognola capace di illuminare come una lanterna. La luce permane\nper 11 minuti.');
INSERT INTO incantesimi VALUES (221,'Gelo I',101,2,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Infligge ad un target, posto ad una distanza massima di un metro, 5d6 PV di\ndanno (più eventuali danni addizionali da ustione). Il target può\ndimezzare i danni realizzando un TR a difficoltà 20.');
INSERT INTO incantesimi VALUES (222,'',101,2,4,'m',10,NULL,NULL,0,NULL,'N',NULL,'Infligge agli esseri posti all\'interno unàrea di 4 metri di raggio distante\nfino a 10 metri dal necromante 5d6 PV di danno (più eventuali danni addizionali\nda ustione). Il target può dimezzare i danni realizzando un TR a difficoltà\n20.');
INSERT INTO incantesimi VALUES (223,'Illusione di morte',219,2,1,'target',0,3,NULL,0,NULL,'N','1d4 settimane','Fa vedere e udire al target un totale di 3 minuti di brevi scene raccapriccianti\nnel corso di 1d4 settimane. A discrezione del master, dipendentemente dall\'indole\ndel target, queste visioni potranno provocare perdita di punti Psiche. Il target\npuò sottrarsi all\'incantesimo, al momento del lancio, realizzando un TV\na difficoltà 20.');
INSERT INTO incantesimi VALUES (224,'Invecchiamento',103,2,1,'target',0,NULL,NULL,0,NULL,'N','1d6 giorni','Accelera il processo di invecchiamento portando il target alla morte per vecchiaia\nin 1d6 giorni. Il target può evitare gli effetti dell\'incantesimo realizzando\nun TR a difficoltà 20.');
INSERT INTO incantesimi VALUES (225,'Malattia I',103,2,1,'m',1,3,NULL,0,NULL,'N','oltre 1 mese','Infligge una malattia mortale (a discrezione del necromante) a tutti gli esseri\nsituati entro un metro di raggio fino ad un metro di distanza dal necromante\n. Qualunque sia la malattia scelta, avrà un decorso superiore a 30 giorni\ne le vittime potranno evitare gli effetti dell\'incantesimo realizzando un TR\na difficoltà 20.\n');
INSERT INTO incantesimi VALUES (226,'Malattia II',103,2,1,'m',1,3,NULL,0,NULL,'N','oltre 1 mese','\nInfligge una malattia mortale (a discrezione del necromante) a tutti gli esseri\nsituati entro un metro di raggio fino ad un metro di distanza dal necromante\n. Qualunque sia la malattia scelta, avrà un decorso superiore a 30 giorni\ne le vittime potranno evitare gli effetti dell\'incantesimo realizzando un TR\na difficoltà 25.');
INSERT INTO incantesimi VALUES (227,'Morte I',103,2,1,'m',1,NULL,NULL,0,NULL,'N',NULL,'Provoca la morte di un target a contatto con il Necromante qualora il target\nstesso non realizzi un TR a difficoltà 20.');
INSERT INTO incantesimi VALUES (228,'Morte II',103,2,1,'target',10,NULL,NULL,0,NULL,'N',NULL,'Provoca la morte di un target a contatto con il Necromante qualora il target\nstesso non realizzi un TR a difficoltà 25.');
INSERT INTO incantesimi VALUES (229,'Ombra',5,2,1,'target',0,3,NULL,0,NULL,'N',NULL,'Cambia la colorazione della superficie di un target di massimo 90 kg di peso\ne del suo equipaggiamento fino a 100 kg rendendolo completamente nero e privo\ndi riflessi, quindi indistinguibile dalle ombre. Per individuare il target cos`{i}\nnascosto nell\'ombra occorre realizzare un TOSS a difficoltà 16.');
INSERT INTO incantesimi VALUES (230,'Onda Mortale',101,2,10,'m',19,3,NULL,0,NULL,'Y',NULL,'Crea un\'onda di anime urlanti lungo una traiettoria cilindrica che strazia tutte\nle vittime presenti lungo la gittata e in unàrea di 10 metri di raggio,\ndistante dal Necromante massimo 19 metri, infliggendo 10d6 PV di danno più\neventuali danni addizionali da ustione. La vittima può dimezzare i danni\nrealizzando un TR a difficoltà 30.');
INSERT INTO incantesimi VALUES (231,'Parere spiritico',501,2,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Permette di avere una consulenza da un\'essenza dell\'oltretomba che fornisce\nl\'informazione desiderata come se avesse un VAL 15 in unàbilità a\nD1 basata su CON.');
INSERT INTO incantesimi VALUES (232,'Parlare con i morti',502,2,1,'target',1,11,NULL,0,NULL,'N',NULL,'Permette al Necromante di parlare per 7 minuti con un cadavere posto alla distanza\nmassima di un metro. Il cadavere effettua un TV a difficoltà 20 per ogni\ndomanda e risponde in modo sincero alle domande se lo fallisce. In caso contrario\nrisponde arbitrariamente.');
INSERT INTO incantesimi VALUES (233,'Protezione Esseri del Limbo I',403,2,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli Esseri del Limbo di potenza inferiore o uguale a 6 non possono entrare\nse non realizzando un TV a difficoltà 16. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali ci si sta proteggendo. Il TV della creatura è penalizzato\ndi -1 per ogni metro all\'interno dell\'area. L\'incantesimo perdura per 7 minuti.\n');
INSERT INTO incantesimi VALUES (234,'Protezione Esseri del Limbo II',403,2,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli Esseri del Limbo di potenza inferiore o uguale a 15 non possono entrare\nse non realizzando un TV a difficoltà 25. Realizzando un TV le creature\npotranno avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area attacca\nle creature dalle quali ci si sta proteggendo. Per ogni metro all\'interno dell\'area\nil TV delle creature è penalizzato di -1. L\'incantesimo perdura per 7 minuti.\n');
INSERT INTO incantesimi VALUES (235,'Protezione Esseri del Limbo III',403,2,3,'m',0,7,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli Esseri del Limbo di potenza inferiore o uguale a 21 non possono entrare\nse non realizzando un TV a difficoltà 31. Realizzando un TV le creature\npotranno avanzare di 1 metro all\'interno, subendo 1d6 PV di danno netto per\nogni metro all\'interno dell\'area, L\'incantesimo scompare se un essere all\'interno\ndell\'area attacca le creature dalle quali ci si sta proteggendo. Per ogni metro\nall\'interno dell\'area il TV delle creature è penalizzato di -1. L\'incantesimo\nperdura per 7 minuti.');
INSERT INTO incantesimi VALUES (236,'Sacca del Viaggiatore',310,2,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea attorno al Target una sacca traslucida in grado di dimezzare tutti gli\nattacchi fisici da botta, da taglio e da punta. L\'incantesimo dura per 3 minuti.\n');
INSERT INTO incantesimi VALUES (237,'Schifo I',104,2,3,'m',0,3,NULL,0,NULL,'N',NULL,'Stordisce le vittima in un raggio di 3 metri provocandole conati di vomito che la inabilitano per il\nround in corso e per quello successivo. Per evitare gli effetti è necessario\nrealizzare un TR a difficoltà 15.');
INSERT INTO incantesimi VALUES (238,'Schifo II',104,2,3,'m',0,NULL,NULL,0,NULL,'N',NULL,'Stordisce le vittime provocando conati di vomito che le inabilitano per il\nround in corso e per quello successivo. Per evitare gli effetti è necessario\nrealizzare un TR a difficoltà 20.');
INSERT INTO incantesimi VALUES (239,'Spirito Consigliere',508,2,1,'target',3,3,NULL,0,NULL,'N',NULL,'Conferisce ad un target posto a non più di 3 metri dal Necromante un bonus\ndi 15 punti all\'abilità Conoscere esseri del Limbo per 3 minuti.');
INSERT INTO incantesimi VALUES (240,'Tappeto di spiriti',6,2,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Fa materializzare sotto il target un tappeto di spiriti che gli consentono di\nspostarsi in volo a una velocità massima di 100 km/h. Il target deve pesare\nmassimo 90 kg e avere un equipaggiamento di massimo 100 kg. L\'incantesimo viene\nmantenuto a concentrazione. Dal momento in cui la concentrazione viene persa\nl\'incantesimo dura 3 minuti.\n');
INSERT INTO incantesimi VALUES (241,'Terrore I',104,2,3,'m',0,NULL,NULL,0,NULL,'N',NULL,'Induce nella vittima una sensazione di panico incontrollabile che la inabilitano\nper il round in corso e per quello successivo. Per evitare gli effetti è\nnecessario realizzare un TP a difficoltà 15.');
INSERT INTO incantesimi VALUES (242,'Terrore II',104,2,3,'m',0,NULL,NULL,0,NULL,'N',NULL,'Stordisce nella vittima una sensazione di panico incontrollabile che la inabilitano\nper il round in corso e per quello successivo. Per evitare gli effetti è\nnecessario realizzare un TP a difficoltà 20.');
INSERT INTO incantesimi VALUES (243,'Tocco mortale I',102,2,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Infligge 2d6 PV/PSC di danno da gelo (più eventuali danni addizionali da\nustione) su un target con cui si è a contatto.');
INSERT INTO incantesimi VALUES (244,'Tocco mortale II',102,2,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Infligge 3d6 PV/PSC di danno da gelo (più eventuali danni addizionali da\nustione) su un target con cui si è a contatto.');
INSERT INTO incantesimi VALUES (245,'Trance spiritica',202,2,1,'target',1,11,NULL,0,NULL,'N',NULL,'Permette di possedere per 11 minuti il corpo di un target posto a non più\ndi 1 metro dal Necromante. Questi può evitare la possessione effettuando\nun TV a difficoltà 20.');
INSERT INTO incantesimi VALUES (246,'Urlo',103,2,3,'m',4,NULL,NULL,0,NULL,'N',NULL,'Il necromante emette un urlo lancinante che uccide tutti gli esseri, presenti\nin unàrea di 3 metri di raggio fino a 4 metri di distanza, che non realizzano\nun TR a difficoltà 25');
INSERT INTO incantesimi VALUES (247,'Vampiro',309,2,1,'target',0,NULL,NULL,4,NULL,'N',NULL,'Cura al Necromante 3d6 PV/PSC prelevandoli da una vittima. La vittima può\nevitare gli effetti dell\'incantesimo effettuando un TR a difficoltà 20.\n');
INSERT INTO incantesimi VALUES (248,'Vermi',2,2,1,'m',4,NULL,NULL,0,NULL,'N',NULL,'Crea 90 kg di vermi necrofagi sparsi nel raggio di 1 metro entro 4 metri di\ndistanza dal Necromante. Ogni verme ha 1 in COS, 1 in CONC, 2 in AGI e 0 nelle\ncaratteristiche restanti.');
INSERT INTO incantesimi VALUES (249,'Via Morte',11,2,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Permette al target di massimo 90 kg di peso e con un equipaggiamento di massimo\n100 kg di teletrasportarsi in un qualunque luogo entro la distanza di 100 metri\nsenza errore se nel luogo di arrivo è presente la carcassa di un animale\n(umanoidi compresi). In caso contrario l\'incantesimo non ha effetto.');
INSERT INTO incantesimi VALUES (250,'Visione di Morte',203,2,1,'target',1,NULL,'permanente',0,NULL,'N',NULL,'Fa vivere al target, posto a non più di un metro dal Necromante, il momento\ndella sua morte, comportandogli una perdita permanente di 10 punti Psiche. La\nperdita si produce gradualmente nell\'arco di 1d6 giorni se il target non realizza\nun TP a difficoltà 20. La perdita può essere curata anche con l\'abilità\nMedicina.');
INSERT INTO incantesimi VALUES (251,'Amputazione',102,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Fa partire una lama luminosa che infligge 6d6 PV/PSC di danno mirato su un target\na contatto col mago.');
INSERT INTO incantesimi VALUES (252,'Anestesia',201,1,1,'target',0,11,NULL,0,NULL,'N',NULL,'Fa addormentare un target per 11 minuti se questo non realizza un TV a difficoltà\n15. Dopo la durata il target dorme per 2d6 ore se non viene svegliato.');
INSERT INTO incantesimi VALUES (253,'Antidolore',12,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +10 all\'abilità Resistenza al Dolore per\n3 minuti.\n');
INSERT INTO incantesimi VALUES (254,'Antishock',203,1,1,'target',4,3,NULL,0,NULL,'N',NULL,'Conferisce un bonus di +5 alla Psiche del target per 3 minuti. Il target si\ndeve a trovare a massimo 4 metri dal mago');
INSERT INTO incantesimi VALUES (255,'Asservimento Angeli I',401,1,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Angelo della potenza massima di 12 per un periodo\nmassimo di 3 minuti. Il mago può impartirgli ordini se vince un Confronto\ndi TV con esso se è un essere errante, o con chi lo controlla, se è\ncontrollato da qualcuno.');
INSERT INTO incantesimi VALUES (256,'Asservimento Angeli II',401,1,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Angelo della potenza massima di 19 per un periodo\ndi 3 minuti. Il mago può impartirgli ordini se vince un Confronto di TV\ncon esso se è un essere errante, o con chi lo controlla se esso è\ngia controllato.');
INSERT INTO incantesimi VALUES (257,'Asservimento Angeli III',401,1,1,'target',4,3,NULL,0,NULL,'N',NULL,'Consente di controllare un Angelo della potenza massima di 23 per 3 minuti.\nIl mago può impartirgli ordini se vince un confronto di TV con esso se\nè un essere errante, o con chi lo domina se l\'essere è già controllato.\n');
INSERT INTO incantesimi VALUES (258,'Barella',7,1,1,'target',1,2,'concentrazione',0,NULL,'N',NULL,'Fa apparire una barella che consente di trasportare un target posto a non più\ndi 1 metro di distanza e pesante fino a 120 kg e con 100 kg di equipaggiamento\nalla velocità di 10 km/h. L\'incantesimo viene tenuto a concentrazione.\nAl venir meno della concentrazione l\'effetto prosegue per 3 minuti.\n');
INSERT INTO incantesimi VALUES (259,'Bisturi',4,1,1,'m',1,3,'concentrazione',0,NULL,'N',NULL,'Allunga di 10 cm un\'unghia del target, rendendola affilatissima e capace di\ninfliggere 1d6 PV/PSC di danno. L\'incantesimo perdura a concentrazione, più\n3 minuti.');
INSERT INTO incantesimi VALUES (260,'Coraggio',204,1,1,'target',1,3,NULL,0,NULL,'N',NULL,'Conferisce un bonus di +2 alla Volontà di un target posto a non più\ndi un metro dal mago per la durata di tre minuti.');
INSERT INTO incantesimi VALUES (261,'Cura follia',309,1,1,'target',1,NULL,NULL,0,NULL,'N',NULL,'Restituisce ad un target ad una distanza massima di 1 metro 1d6 di Psiche.\n');
INSERT INTO incantesimi VALUES (262,'Cura I',309,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Cura 1d6 PV/PSC di danno ad 1 target, purchè venga toccato dal mago.');
INSERT INTO incantesimi VALUES (263,'Cura II',309,1,1,'m',1,NULL,NULL,0,NULL,'N',NULL,'Cura 3d6 PV/PSC di danno a tutti gli esseri che si trovano in unàrea di\n1 metro di raggio distante fino a 1 metro dall\'usufruitore.');
INSERT INTO incantesimi VALUES (264,'Cura III',309,1,3,'m',4,NULL,NULL,0,NULL,'N',NULL,'Cura 7d6 PV/PSC di danno a tutti gli esseri che si trovano in unàrea di\n4 metro di raggio distante fino a 7 metri dall\'usufruitore.');
INSERT INTO incantesimi VALUES (265,'Devia Colpo I',303,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Devia tutti gli attacchi diretti al target per 3 minuti, con Base TPD pari a\n10.\n');
INSERT INTO incantesimi VALUES (266,'Devia Colpo II',303,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Devia tutti gli attacchi diretti al target per 3 minuti, con Base TPD pari a\n20.');
INSERT INTO incantesimi VALUES (267,'Erboristeria',508,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +9 all\'abilità Conoscere Piante o +3 all\'abilità\nAlchimia, per 3 minuti.');
INSERT INTO incantesimi VALUES (268,'Eutanasia I',103,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Offre il conforto della morte dolce ad un target. Se il target non vuole spegnersi\ndolcemente può vanificare l\'effetto dell\'incantesimo realizzando un TR\na difficoltà 10.');
INSERT INTO incantesimi VALUES (269,'Eutanasia II',103,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Offre il conforto della morte dolce ad un target. Se il target non vuole spegnersi\ndolcemente può vanificare l\'effetto dell\'incantesimo realizzando un TR\na difficoltà 20.');
INSERT INTO incantesimi VALUES (270,'Evoca Angeli I',402,1,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca un Caduto, un Rugiel o un Custode Minore per 3 minuti. Il mago può\nimpartirgli ordini se vince un confronto di TV con esso.');
INSERT INTO incantesimi VALUES (271,'Evoca Angeli II',402,1,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca un Bayst, un Johaim o un Custode maggiore (o Angeli di potenza inferiore)\nper 3 minuti. Il mago può impartirgli ordini se vince un confronto di TV\ncon esso.');
INSERT INTO incantesimi VALUES (272,'Evoca Angeli III',402,1,1,'target',1,3,NULL,0,NULL,'N',NULL,'Evoca un Uziel o un Adonai (o un Angelo di potenza inferiore) per 3 minuti.\nIl mago può impartirgli ordini se vince un confronto di TV con esso.\n');
INSERT INTO incantesimi VALUES (273,'Filtro I',310,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea un filtro di luce azzurra che rallenta tutti gli attacchi fisici o quelli\nmagici di danno mirato diretti al target dividendone il danno per 2. L\'incantesimo\ndura 3 minuti.');
INSERT INTO incantesimi VALUES (274,'Filtro II',310,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea un filtro di luce bianca che rallenta tutti gli attacchi fisici o quelli\nmagici di danno mirato diretti al target dividendone il danno per 4. L\'incantesimo\ndura 3 minuti.');
INSERT INTO incantesimi VALUES (275,'Grandezza',14,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Dimezza o raddoppia le dimensioni di un target, posto a contatto col mago, pesante\nfino a 90 kg e che trasporti un equipaggiamento pesante fino a 100 kg. Il target\npuò opporsi all\'incantesimo realizzando un TR a diff. 18. Dopo 3 minuti\nil target riprende le sue dimensioni normali.');
INSERT INTO incantesimi VALUES (276,'Guarigione I',306,1,1,'target',0,3,NULL,0,NULL,'N','1d6 giorni','Guarisce in 1d6 giorni un target da una malattia mortale, se la somma del lancio\ndi 5d6 supera il numero di PV originari del target (COSx3 + BON FOR escludendo\nle variazioni dovute a droghe, incantesimi, etc...) .');
INSERT INTO incantesimi VALUES (277,'Guarigione II',306,1,3,'m',0,NULL,NULL,0,NULL,'N','1d6 giorni','Guarisce in 1d6 giorni da una malattia mortale tutti gli esseri che si trovano\nin unàrea di 3 metri di raggio con centro sul guaritore, se la somma del\nlancio di 10d6 supera il numero di PV originari dei target (COSx3 + BON FOR\nescludendo le variazioni dovute a droghe, incantesimi, etc...) ');
INSERT INTO incantesimi VALUES (278,'Guarigione III',306,1,3,'m',0,NULL,NULL,0,NULL,'N','1d6 giorni','Guarisce in 1d6 giorni da una malattia mortale tutti gli esseri che si trovano\nin unàrea di 3 metri di raggio con centro sul guaritore, se la somma del\nlancio di 15d6 supera il numero di PV originari del target (COSx3 + BON FOR\nescludendo le variazioni dovute a droghe, incantesimi, etc...) .');
INSERT INTO incantesimi VALUES (279,'Ibernazione',5,1,1,'target',0,NULL,'permanente',0,NULL,'N',NULL,'Conserva permanentemente un corpo di massimo 120 kg di peso, abbassandone la\ntemperatura interna. Può essere usato anche per conservare cadaveri o cibarie.');
INSERT INTO incantesimi VALUES (280,'Implanto',3,1,1,'target',0,15,NULL,0,NULL,'N',NULL,'Crea un secondo organo per coadiuvare le funzioni di un organo esistente, per\n15 minuti.');
INSERT INTO incantesimi VALUES (281,'Incarnazione',202,1,1,'target',0,NULL,'permanente',0,NULL,'N',NULL,'Come Trasferimento Vitale, ma l\'usufruitore si incarna definitivamente nel corpo\ndel target, fino allo scioglimento dell\'incantesimo. Alla morte del corpo originario\ndel mago, l\'incantesimo non potrà più essere sciolto.');
INSERT INTO incantesimi VALUES (282,'Infondi vita',2,1,1,'m',0,NULL,NULL,0,NULL,'N','1d6 giorni','Dona la vita a tutti gli oggetti inanimati inclusi in unàrea di 1 metro\ndi raggio, di piccole dimensioni, fino a 30 kg di massa totale (sassi, tavolini,\nsuppellettili) conferendo loro un numero massimo di PCAT di 40. L\'incantesimo\ninfonde la vita in 1d6 giorni.');
INSERT INTO incantesimi VALUES (283,'Medicina',508,1,1,'target',0,15,NULL,0,NULL,'N',NULL,'Attribuisce al target un bonus di +5 all\'abilità Medicina per 15 minuti.');
INSERT INTO incantesimi VALUES (284,'Para Urti I',304,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea due sfere luminose orbitanti attorno al target aventi lo scopo di parare\nciascuna un attacco diretto ad esso, con Base TPD pari a 20. Ognuna delle sfere\nscompare dopo aver parato un attacco. Le sfere scompaiono comunque dopo 3 minuti.');
INSERT INTO incantesimi VALUES (285,'Para Urti II',304,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea 5 sfere luminose orbitanti attorno al target aventi lo scopo di parare\nciascuna un attacco diretto ad esso, con Base TPD pari a 20. Ognuna delle sfere\nscompare dopo aver parato un attacco. Le sfere scompaiono comunque dopo 3 minuti.');
INSERT INTO incantesimi VALUES (286,'Protezione Angeli I',403,1,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli angeli di potenza inferiore o uguale a 12 non possono entrare se non\nrealizzando un TV a difficoltà 22. Realizzando un TV le creature potranno\navanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area protetta\nattacca le creature dalle quali si sta proteggendo. Per ogni metro all\'interno\ndell\'area il TV delle creature è penalizzato di -1. L\'incantesimo perdura\nper 3 minuti.');
INSERT INTO incantesimi VALUES (287,'Protezione Angeli II',403,1,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli angeli di potenza inferiore o uguale a 19 non possono entrare se non\nrealizzando un TV a difficoltà 29 Realizzando un TV le creature potranno\navanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area protetta\nattacca le creature dalle quali si sta proteggendo. Per ogni metro all\'interno\ndell\'area il TV delle creature è penalizzato di -1. L\'incantesimo perdura\nper 3 minuti.');
INSERT INTO incantesimi VALUES (288,'Protezione Angeli III',403,1,3,'m',0,3,NULL,0,NULL,'N',NULL,'Viene creata attorno al mago unàrea di 3 metri di raggio all\'interno della\nquale gli angeli di potenza inferiore o uguale a 23 non possono entrare se non\nrealizzando un TV a difficoltà 33. Realizzando un TV le creature potranno\navanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all\'interno\ndell\'area, L\'incantesimo scompare se un essere all\'interno dell\'area protetta\nattacca le creature dalle quali si sta proteggendo. Per ogni metro all\'interno\ndell\'area il TV delle creature è penalizzato di -1. L\'incantesimo perdura\nper 3 minuti.');
INSERT INTO incantesimi VALUES (289,'Purificazione',5,1,1,'m',0,3,NULL,0,NULL,'N',NULL,'Sterilizza cibo e acqua fino ad una massa totale di 100 kg. Se il cibo purificato\nnon viene conservato in maniera idonea entro 3 minuti, potrà nuovamente\nandare a male.');
INSERT INTO incantesimi VALUES (290,'Raggio di luce',101,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Investe un target di un lampo luminoso di energia che gli infligge 10d6 PV (Più\neventuali Danni Addizionali da ustione) di danno netto dimezzabile con un TR\na difficoltà 30. L\'incantesimo deve essere effettuato a contatto.');
INSERT INTO incantesimi VALUES (291,'Restauro',308,1,3,'m',1,NULL,NULL,0,NULL,'N',NULL,'Ripara danni a tutti gli oggetti posti all\'interno di unàrea di 3 metri\ndi raggio, per un totale di 5d6 Punti Struttura per ogni oggetto. Il centro\ndell\'area di 3 metri può distare fino ad 1 metro dal mago.');
INSERT INTO incantesimi VALUES (292,'Resurrezione I',306,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Resuscita un target se il risultato del lancio di 7d6 supera o eguaglia il numero\ntotale dei PV originari del target (COSx3 + BON FOR escludendo gli effetti di\ndroghe, incantesimi, etc...), purchè non sia trascorso più di 1 giorno\ndal decesso.');
INSERT INTO incantesimi VALUES (293,'Resurrezione II',306,1,1,'target',0,3,NULL,0,NULL,'N',NULL,'Resuscita un target se il risultato del lancio di 10d6 supera o eguaglia il\nnumero totale dei PV originari del target (COSx3 + BON FOR escludendo gli effetti\ndi droghe, incantesimi, etc...), purchè non siano trascorsi più di\n5 giorni dal decesso.');
INSERT INTO incantesimi VALUES (294,'Ricostruzione',308,1,10,'m',4,3,NULL,0,NULL,'N','1d6 giorni','Ripara danni a tutti gli oggetti posti all\'interno di unàrea di 10 metri\ndi raggio, per un totale di 10d6 Punti Struttura per ogni oggetto. Il centro\ndell\'area di 10 metri può distare fino a 4 metri dal mago. I danni verranno\nriparati gradualmente in 1d6 giorni.');
INSERT INTO incantesimi VALUES (295,'Riposo',309,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Restituisce al target 4d6 PF o 4d6 PM.');
INSERT INTO incantesimi VALUES (296,'Risveglio I',307,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Rianima dal coma un target se il risultato del lancio di 5d6 eguaglia o supera\nil numero totale dei PV originari del target (COSx3 + BON FOR escludendo gli\neffetti di droghe, incantesimi, etc...).');
INSERT INTO incantesimi VALUES (297,'Risveglio II',307,1,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Rianima dal coma un target se il risultato del lancio di 10d6 eguaglia o supera\nil numero totale dei PV originari del target (COSx3 + BON FOR escludendo gli\neffetti di droghe, incantesimi, etc...).');
INSERT INTO incantesimi VALUES (298,'Sfera di immunità',305,1,1,'m',1,3,NULL,0,NULL,'N',NULL,'Protegge tutti i target che stanno all\'lnterno di unàrea di 1 metro di\nraggio, distante fino a 1 metro dall\'usufruitore, da ogni incantesimo di Attacco/Danno\nnetto, assorbendo 7d6 di danno, nel corso di 3 minuti.\n');
INSERT INTO incantesimi VALUES (299,'Sfera di vita',302,1,1,'m',1,3,NULL,0,NULL,'N',NULL,'Crea una sfera di 1 metro di raggio che garantisce una protezione pari a 10\nPP su tutti coloro che stanno al suo interno. La protezione dura 3 minuti.');
INSERT INTO incantesimi VALUES (300,'Trasferimento vitale',202,1,1,'target',0,15,NULL,0,NULL,'N',NULL,'L\'usufruitore trasferisce la sua essenza vitale all\'lnterno di un ospite per\n15 minuti. Durante questo tempo il corpo dell\'usufruitore resterà in catalessi.\nIl target potrà sottrarsi all\'incantesimo realizzando un TV a difficoltà 20');
INSERT INTO incantesimi VALUES (301,'Agronomo',508,7,1,'target',0,7,NULL,0,NULL,'N',NULL,'Conferisce all\'usufruitore un bonus di +5 all\'abilità conoscere piante\nper 7 minuti\n');
INSERT INTO incantesimi VALUES (302,'Allevatore',508,7,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Conferisce all\'usufruitore un bonus di +5 all\'abilità Ammaestrare finchè\nl\'usufruitore mantiene la concentrazione.');
INSERT INTO incantesimi VALUES (303,'Aratro',1,7,1,'target',1,NULL,'concentrazione',0,NULL,'N',NULL,'Crea dal nulla un aratro che perdura per tutto il tempo in cui il mago resta\nconcentrato.\n');
INSERT INTO incantesimi VALUES (304,'Controllo Funi',6,7,1,'target',4,3,NULL,0,NULL,'N',NULL,'Permette all\'usufruitore di spostare a suo piacimento una fune pesante massimo\n30 Kg alla velocità di 10 Km/h. L\' incantesimo perdura per 3 minuti.');
INSERT INTO incantesimi VALUES (305,'Conversazione',502,7,2,'target',7,3,NULL,0,NULL,'N',NULL,'Consente all\'usufruitore di parlare con uno o due animali distante sino a 7 metri per\n3 minuti');
INSERT INTO incantesimi VALUES (306,'Gran lavoratore',14,7,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Raddoppia le dimensioni dell\'usufruitore qualora pesi fino a 120 kg ed abbia\nnon più di 100 kg di carico, fino a quando questi resta concentrato.');
INSERT INTO incantesimi VALUES (307,'Meteorologo',503,7,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Consente all\'usufruitore di prevedere il tempo che farà nelle successive\n12 ore');
INSERT INTO incantesimi VALUES (308,'Mulo',7,7,1,'target',1,11,NULL,0,NULL,'N',NULL,'Consente di trasportare sul piano fino a 100 kg di massa non vivente posta entro\nun metro alla velocita di 10 km/h per 11 minuti');
INSERT INTO incantesimi VALUES (309,'Torcia',1,7,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Crea una torcia accesa che dura per tutto il tempo in cui l\'usufruitore resta\nconcentrato.');
INSERT INTO incantesimi VALUES (310,'Vigore',12,7,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Attribuisce all\'abilita Resistenza alla fatica dell\'usufruitore un bonus di\n+10 finché egli rimane concentrato.');
INSERT INTO incantesimi VALUES (311,'Anti Infortunio',310,8,1,'target',0,3,NULL,0,NULL,'N',NULL,'Divide per 2 tutti i danni da botta, da taglio e da punta subiti dal Target\nnell\'arco di 3 minuti.');
INSERT INTO incantesimi VALUES (312,'Antifiamma',305,8,1,'target',0,3,NULL,0,NULL,'N',NULL,'Protegge per 3 minuti l\'usufruitore, assorbendo 4d6 PV di danno dovuto a fuoco\nper ogni attacco');
INSERT INTO incantesimi VALUES (313,'Antiveleno',12,8,1,'target',0,3,NULL,0,NULL,'N',NULL,'Conferisce al target un bonus di +5 all\'abilità Resistenza ai Veleni per\n3 minuti.');
INSERT INTO incantesimi VALUES (314,'Artigiano',308,8,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Ripara 2d6 Punti Struttura di un oggetto danneggiato.');
INSERT INTO incantesimi VALUES (315,'Bendaggio',309,8,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Cura 2d6 PV/PSC ad un target.\n');
INSERT INTO incantesimi VALUES (316,'Corazza',302,8,1,'target',0,3,NULL,0,NULL,'N',NULL,'Conferisce all\'usufruitore una protezione pari a 6 PP per 3 minuti.');
INSERT INTO incantesimi VALUES (317,'Cortina fumogena',215,8,3,'m',0,3,NULL,0,NULL,'N',NULL,'Illude i target entro un raggio di 3 metri di trovarsi immersi in una densa\nnube di fumo, nascondendo l\'usufrutore. Realizzando un TOSS a difficoltà\n15 le vittime scopriranno il trucco e con un successivo TV a 15 potranno dissolvere\nl\'illusione.');
INSERT INTO incantesimi VALUES (318,'Ritirata',9,8,1,'target',0,NULL,NULL,0,NULL,'N',NULL,'Teletrasporta un target del peso massimo di 90 kg fino a 100 metri di distanza.\nIl teletrasporto non agisce sull\'equipaggiamento.');
INSERT INTO incantesimi VALUES (319,'Tuta',302,8,1,'target',0,NULL,'concentrazione',0,NULL,'N',NULL,'Protegge l\'usufruitore con una tuta di tela che gli conferisce una protezione\ndi 1 PP per tutti i danni da botta, da taglio o da punta. La protezione dura\na concentrazione più tre minuti.');
INSERT INTO incantesimi VALUES (320,'Ferros III',304,8,1,'target',0,3,NULL,0,NULL,'N',NULL,'Crea 3  sfere rotanti attorno al target capaci di parar \naltrettanti attacchi portati nell\'arco di 3 minuti con una base TPD pari a 15.');

#
# Table structure for table 'parametri'
#
CREATE TABLE parametri (
  id int(10) unsigned DEFAULT '0' NOT NULL,
  nome varchar(100) DEFAULT '' NOT NULL,
  punti_per_unita int(11) DEFAULT '0' NOT NULL,
  divisore_unita int(11) DEFAULT '0' NOT NULL,
  unita varchar(10),
  log10 enum('N','Y') DEFAULT 'N' NOT NULL,
  PRIMARY KEY (id)
);

#
# Dumping data for table 'parametri'
#

INSERT INTO parametri VALUES (1,'Massa vivente',1,30,'kg','N');
INSERT INTO parametri VALUES (2,'Complessità',1,1,NULL,'N');
INSERT INTO parametri VALUES (3,'Massa non vivente',1,30,'kg','N');
INSERT INTO parametri VALUES (4,'punti CAraTteristica',1,4,'punti','N');
INSERT INTO parametri VALUES (5,'Fattore dimensione',2,1,'unità','N');
INSERT INTO parametri VALUES (6,'Massa',1,10,'kg','N');
INSERT INTO parametri VALUES (7,'Danno',5,1,'d6','N');
INSERT INTO parametri VALUES (8,'Danni addizionali',1,1,NULL,'N');
INSERT INTO parametri VALUES (101,'Massa non vivente',1,100,'kg','N');
INSERT INTO parametri VALUES (9,'Velocità',1,10,'km/h','N');
INSERT INTO parametri VALUES (10,'Distanza di spostamento',5,1,'m','Y');
INSERT INTO parametri VALUES (11,'Variazione abilità',1,1,'punti','N');
INSERT INTO parametri VALUES (12,'Variazione caratteristica',6,1,'punti','N');
INSERT INTO parametri VALUES (13,'Danno',2,1,'d6','N');
INSERT INTO parametri VALUES (14,'Base TPC',1,1,'punti','N');
INSERT INTO parametri VALUES (15,'Difficoltà del TR',1,1,'punti','N');
INSERT INTO parametri VALUES (16,'Difficoltà del TV',1,1,'punti','N');
INSERT INTO parametri VALUES (17,'Variazione caratteristica PSI',1,1,'punti','N');
INSERT INTO parametri VALUES (18,'Difficoltà del TV e del TOSS',1,1,'punti','N');
INSERT INTO parametri VALUES (19,'Base antimagia',1,1,'punti','N');
INSERT INTO parametri VALUES (20,'Protezione',2,1,'PP','N');
INSERT INTO parametri VALUES (21,'Base TPD',1,1,'punti','N');
INSERT INTO parametri VALUES (22,'Parate',2,1,NULL,'N');
INSERT INTO parametri VALUES (23,'Protezione',2,1,'d6','N');
INSERT INTO parametri VALUES (24,'Riparazione',2,1,'d6','N');
INSERT INTO parametri VALUES (25,'Tempo trascorso dalla morte',1,1,'giorni','N');
INSERT INTO parametri VALUES (26,'divisore',5,1,'unità','N');
INSERT INTO parametri VALUES (27,'Potenza della creatura',1,1,'unità','N');
INSERT INTO parametri VALUES (28,'TOT di base dell\'abilità',1,1,'unità','N');
INSERT INTO parametri VALUES (29,'DIFF reperimento informazione\'',1,1,'unità','N');
INSERT INTO parametri VALUES (30,'Previsione',1,1,'ore','N');
INSERT INTO parametri VALUES (31,'Tempo trascorso',1,1,'anni','N');
INSERT INTO parametri VALUES (32,'Distanza',4,1,'m','Y');

#
# Table structure for table 'parametri_incantesimi'
#
CREATE TABLE parametri_incantesimi (
  incantesimo int(10) unsigned DEFAULT '0' NOT NULL,
  parametro int(10) unsigned DEFAULT '0' NOT NULL,
  valore int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (incantesimo,parametro)
);

#
# Dumping data for table 'parametri_incantesimi'
#

INSERT INTO parametri_incantesimi VALUES (1,7,2);
INSERT INTO parametri_incantesimi VALUES (1,14,17);
INSERT INTO parametri_incantesimi VALUES (2,2,1);
INSERT INTO parametri_incantesimi VALUES (2,3,30);
INSERT INTO parametri_incantesimi VALUES (3,101,1000);
INSERT INTO parametri_incantesimi VALUES (3,9,10);
INSERT INTO parametri_incantesimi VALUES (4,101,100);
INSERT INTO parametri_incantesimi VALUES (4,1,60);
INSERT INTO parametri_incantesimi VALUES (4,9,10);
INSERT INTO parametri_incantesimi VALUES (5,27,10);
INSERT INTO parametri_incantesimi VALUES (6,27,17);
INSERT INTO parametri_incantesimi VALUES (7,27,24);
INSERT INTO parametri_incantesimi VALUES (8,9,10);
INSERT INTO parametri_incantesimi VALUES (9,101,2000);
INSERT INTO parametri_incantesimi VALUES (9,9,10);
INSERT INTO parametri_incantesimi VALUES (10,20,5);
INSERT INTO parametri_incantesimi VALUES (11,101,30);
INSERT INTO parametri_incantesimi VALUES (11,9,100);
INSERT INTO parametri_incantesimi VALUES (11,1,120);
INSERT INTO parametri_incantesimi VALUES (12,101,100);
INSERT INTO parametri_incantesimi VALUES (12,5,6);
INSERT INTO parametri_incantesimi VALUES (13,101,300);
INSERT INTO parametri_incantesimi VALUES (13,5,10);
INSERT INTO parametri_incantesimi VALUES (14,5,2);
INSERT INTO parametri_incantesimi VALUES (15,5,5);
INSERT INTO parametri_incantesimi VALUES (16,101,200);
INSERT INTO parametri_incantesimi VALUES (16,5,10);
INSERT INTO parametri_incantesimi VALUES (17,101,100);
INSERT INTO parametri_incantesimi VALUES (17,5,14);
INSERT INTO parametri_incantesimi VALUES (18,27,10);
INSERT INTO parametri_incantesimi VALUES (19,27,17);
INSERT INTO parametri_incantesimi VALUES (20,27,24);
INSERT INTO parametri_incantesimi VALUES (21,1,0);
INSERT INTO parametri_incantesimi VALUES (21,2,4);
INSERT INTO parametri_incantesimi VALUES (21,101,1000);
INSERT INTO parametri_incantesimi VALUES (22,1,90);
INSERT INTO parametri_incantesimi VALUES (22,2,10);
INSERT INTO parametri_incantesimi VALUES (22,101,30);
INSERT INTO parametri_incantesimi VALUES (23,1,90);
INSERT INTO parametri_incantesimi VALUES (23,2,10);
INSERT INTO parametri_incantesimi VALUES (23,101,30);
INSERT INTO parametri_incantesimi VALUES (24,1,0);
INSERT INTO parametri_incantesimi VALUES (24,3,300);
INSERT INTO parametri_incantesimi VALUES (24,10,1);
INSERT INTO parametri_incantesimi VALUES (25,13,10);
INSERT INTO parametri_incantesimi VALUES (26,13,2);
INSERT INTO parametri_incantesimi VALUES (27,13,6);
INSERT INTO parametri_incantesimi VALUES (28,13,8);
INSERT INTO parametri_incantesimi VALUES (29,16,0);
INSERT INTO parametri_incantesimi VALUES (29,31,9);
INSERT INTO parametri_incantesimi VALUES (30,15,25);
INSERT INTO parametri_incantesimi VALUES (31,15,34);
INSERT INTO parametri_incantesimi VALUES (32,7,1);
INSERT INTO parametri_incantesimi VALUES (32,14,15);
INSERT INTO parametri_incantesimi VALUES (33,27,10);
INSERT INTO parametri_incantesimi VALUES (34,27,17);
INSERT INTO parametri_incantesimi VALUES (35,27,24);
INSERT INTO parametri_incantesimi VALUES (36,13,4);
INSERT INTO parametri_incantesimi VALUES (37,13,4);
INSERT INTO parametri_incantesimi VALUES (38,15,22);
INSERT INTO parametri_incantesimi VALUES (39,7,2);
INSERT INTO parametri_incantesimi VALUES (39,14,13);
INSERT INTO parametri_incantesimi VALUES (40,26,2);
INSERT INTO parametri_incantesimi VALUES (41,26,5);
INSERT INTO parametri_incantesimi VALUES (42,13,4);
INSERT INTO parametri_incantesimi VALUES (43,13,5);
INSERT INTO parametri_incantesimi VALUES (44,6,10);
INSERT INTO parametri_incantesimi VALUES (44,7,3);
INSERT INTO parametri_incantesimi VALUES (45,13,6);
INSERT INTO parametri_incantesimi VALUES (46,7,3);
INSERT INTO parametri_incantesimi VALUES (46,14,20);
INSERT INTO parametri_incantesimi VALUES (47,13,8);
INSERT INTO parametri_incantesimi VALUES (48,15,20);
INSERT INTO parametri_incantesimi VALUES (49,1,90);
INSERT INTO parametri_incantesimi VALUES (49,10,10000);
INSERT INTO parametri_incantesimi VALUES (49,101,100);
INSERT INTO parametri_incantesimi VALUES (50,1,90);
INSERT INTO parametri_incantesimi VALUES (50,10,10000);
INSERT INTO parametri_incantesimi VALUES (50,101,200);
INSERT INTO parametri_incantesimi VALUES (51,7,1);
INSERT INTO parametri_incantesimi VALUES (51,14,10);
INSERT INTO parametri_incantesimi VALUES (52,1,100);
INSERT INTO parametri_incantesimi VALUES (52,2,10);
INSERT INTO parametri_incantesimi VALUES (52,101,0);
INSERT INTO parametri_incantesimi VALUES (53,1,90);
INSERT INTO parametri_incantesimi VALUES (53,4,80);
INSERT INTO parametri_incantesimi VALUES (54,19,20);
INSERT INTO parametri_incantesimi VALUES (55,1,5);
INSERT INTO parametri_incantesimi VALUES (55,2,10);
INSERT INTO parametri_incantesimi VALUES (55,5,0);
INSERT INTO parametri_incantesimi VALUES (56,13,4);
INSERT INTO parametri_incantesimi VALUES (57,20,5);
INSERT INTO parametri_incantesimi VALUES (58,27,4);
INSERT INTO parametri_incantesimi VALUES (59,11,5);
INSERT INTO parametri_incantesimi VALUES (60,23,4);
INSERT INTO parametri_incantesimi VALUES (61,18,20);
INSERT INTO parametri_incantesimi VALUES (62,27,14);
INSERT INTO parametri_incantesimi VALUES (63,27,9);
INSERT INTO parametri_incantesimi VALUES (64,27,30);
INSERT INTO parametri_incantesimi VALUES (65,27,4);
INSERT INTO parametri_incantesimi VALUES (66,27,19);
INSERT INTO parametri_incantesimi VALUES (67,16,20);
INSERT INTO parametri_incantesimi VALUES (68,13,10);
INSERT INTO parametri_incantesimi VALUES (69,21,5);
INSERT INTO parametri_incantesimi VALUES (69,22,1);
INSERT INTO parametri_incantesimi VALUES (70,7,1);
INSERT INTO parametri_incantesimi VALUES (70,14,15);
INSERT INTO parametri_incantesimi VALUES (71,19,20);
INSERT INTO parametri_incantesimi VALUES (72,15,20);
INSERT INTO parametri_incantesimi VALUES (73,24,3);
INSERT INTO parametri_incantesimi VALUES (74,29,10);
INSERT INTO parametri_incantesimi VALUES (74,30,0);
INSERT INTO parametri_incantesimi VALUES (75,21,15);
INSERT INTO parametri_incantesimi VALUES (75,22,5);
INSERT INTO parametri_incantesimi VALUES (76,7,3);
INSERT INTO parametri_incantesimi VALUES (76,14,0);
INSERT INTO parametri_incantesimi VALUES (77,1,90);
INSERT INTO parametri_incantesimi VALUES (77,9,100);
INSERT INTO parametri_incantesimi VALUES (77,101,90);
INSERT INTO parametri_incantesimi VALUES (78,2,4);
INSERT INTO parametri_incantesimi VALUES (78,32,10000);
INSERT INTO parametri_incantesimi VALUES (79,16,20);
INSERT INTO parametri_incantesimi VALUES (80,20,1);
INSERT INTO parametri_incantesimi VALUES (81,11,5);
INSERT INTO parametri_incantesimi VALUES (82,11,5);
INSERT INTO parametri_incantesimi VALUES (83,16,20);
INSERT INTO parametri_incantesimi VALUES (84,27,9);
INSERT INTO parametri_incantesimi VALUES (85,27,19);
INSERT INTO parametri_incantesimi VALUES (86,27,30);
INSERT INTO parametri_incantesimi VALUES (87,6,5);
INSERT INTO parametri_incantesimi VALUES (87,7,2);
INSERT INTO parametri_incantesimi VALUES (88,21,20);
INSERT INTO parametri_incantesimi VALUES (89,11,5);
INSERT INTO parametri_incantesimi VALUES (90,1,1);
INSERT INTO parametri_incantesimi VALUES (90,2,5);
INSERT INTO parametri_incantesimi VALUES (90,5,0);
INSERT INTO parametri_incantesimi VALUES (91,27,9);
INSERT INTO parametri_incantesimi VALUES (92,27,19);
INSERT INTO parametri_incantesimi VALUES (93,27,30);
INSERT INTO parametri_incantesimi VALUES (94,1,90);
INSERT INTO parametri_incantesimi VALUES (94,10,100);
INSERT INTO parametri_incantesimi VALUES (94,101,100);
INSERT INTO parametri_incantesimi VALUES (95,12,1);
INSERT INTO parametri_incantesimi VALUES (96,26,2);
INSERT INTO parametri_incantesimi VALUES (97,18,20);
INSERT INTO parametri_incantesimi VALUES (98,2,5);
INSERT INTO parametri_incantesimi VALUES (99,15,20);
INSERT INTO parametri_incantesimi VALUES (100,7,2);
INSERT INTO parametri_incantesimi VALUES (100,14,12);
INSERT INTO parametri_incantesimi VALUES (101,1,30);
INSERT INTO parametri_incantesimi VALUES (101,2,10);
INSERT INTO parametri_incantesimi VALUES (101,5,0);
INSERT INTO parametri_incantesimi VALUES (102,2,5);
INSERT INTO parametri_incantesimi VALUES (102,3,30);
INSERT INTO parametri_incantesimi VALUES (103,6,10);
INSERT INTO parametri_incantesimi VALUES (103,7,4);
INSERT INTO parametri_incantesimi VALUES (104,15,20);
INSERT INTO parametri_incantesimi VALUES (105,23,3);
INSERT INTO parametri_incantesimi VALUES (106,19,25);
INSERT INTO parametri_incantesimi VALUES (107,1,1);
INSERT INTO parametri_incantesimi VALUES (107,2,10);
INSERT INTO parametri_incantesimi VALUES (107,5,0);
INSERT INTO parametri_incantesimi VALUES (108,1,90);
INSERT INTO parametri_incantesimi VALUES (108,2,2);
INSERT INTO parametri_incantesimi VALUES (108,101,100);
INSERT INTO parametri_incantesimi VALUES (109,1,90);
INSERT INTO parametri_incantesimi VALUES (109,5,4);
INSERT INTO parametri_incantesimi VALUES (109,101,300);
INSERT INTO parametri_incantesimi VALUES (110,2,4);
INSERT INTO parametri_incantesimi VALUES (110,3,300);
INSERT INTO parametri_incantesimi VALUES (111,20,6);
INSERT INTO parametri_incantesimi VALUES (112,11,10);
INSERT INTO parametri_incantesimi VALUES (113,27,7);
INSERT INTO parametri_incantesimi VALUES (114,27,14);
INSERT INTO parametri_incantesimi VALUES (115,27,21);
INSERT INTO parametri_incantesimi VALUES (116,1,0);
INSERT INTO parametri_incantesimi VALUES (116,9,10);
INSERT INTO parametri_incantesimi VALUES (116,101,100);
INSERT INTO parametri_incantesimi VALUES (117,24,3);
INSERT INTO parametri_incantesimi VALUES (118,11,15);
INSERT INTO parametri_incantesimi VALUES (119,1,100);
INSERT INTO parametri_incantesimi VALUES (119,2,10);
INSERT INTO parametri_incantesimi VALUES (119,101,90);
INSERT INTO parametri_incantesimi VALUES (120,2,2);
INSERT INTO parametri_incantesimi VALUES (120,3,120);
INSERT INTO parametri_incantesimi VALUES (121,1,90);
INSERT INTO parametri_incantesimi VALUES (121,10,100);
INSERT INTO parametri_incantesimi VALUES (121,101,100);
INSERT INTO parametri_incantesimi VALUES (122,13,4);
INSERT INTO parametri_incantesimi VALUES (123,16,20);
INSERT INTO parametri_incantesimi VALUES (124,20,3);
INSERT INTO parametri_incantesimi VALUES (125,7,2);
INSERT INTO parametri_incantesimi VALUES (125,14,20);
INSERT INTO parametri_incantesimi VALUES (126,16,20);
INSERT INTO parametri_incantesimi VALUES (127,6,10);
INSERT INTO parametri_incantesimi VALUES (127,7,3);
INSERT INTO parametri_incantesimi VALUES (128,7,2);
INSERT INTO parametri_incantesimi VALUES (128,14,10);
INSERT INTO parametri_incantesimi VALUES (129,11,15);
INSERT INTO parametri_incantesimi VALUES (130,16,10);
INSERT INTO parametri_incantesimi VALUES (131,16,0);
INSERT INTO parametri_incantesimi VALUES (131,31,10);
INSERT INTO parametri_incantesimi VALUES (132,27,7);
INSERT INTO parametri_incantesimi VALUES (133,27,17);
INSERT INTO parametri_incantesimi VALUES (134,27,21);
INSERT INTO parametri_incantesimi VALUES (135,1,120);
INSERT INTO parametri_incantesimi VALUES (135,9,10);
INSERT INTO parametri_incantesimi VALUES (135,101,300);
INSERT INTO parametri_incantesimi VALUES (136,27,7);
INSERT INTO parametri_incantesimi VALUES (137,27,17);
INSERT INTO parametri_incantesimi VALUES (138,27,21);
INSERT INTO parametri_incantesimi VALUES (139,12,3);
INSERT INTO parametri_incantesimi VALUES (140,1,90);
INSERT INTO parametri_incantesimi VALUES (140,2,15);
INSERT INTO parametri_incantesimi VALUES (140,5,4);
INSERT INTO parametri_incantesimi VALUES (141,15,20);
INSERT INTO parametri_incantesimi VALUES (142,13,6);
INSERT INTO parametri_incantesimi VALUES (143,29,10);
INSERT INTO parametri_incantesimi VALUES (143,30,24);
INSERT INTO parametri_incantesimi VALUES (144,13,7);
INSERT INTO parametri_incantesimi VALUES (145,26,2);
INSERT INTO parametri_incantesimi VALUES (146,6,10);
INSERT INTO parametri_incantesimi VALUES (146,7,2);
INSERT INTO parametri_incantesimi VALUES (147,13,6);
INSERT INTO parametri_incantesimi VALUES (148,7,3);
INSERT INTO parametri_incantesimi VALUES (148,14,0);
INSERT INTO parametri_incantesimi VALUES (149,18,20);
INSERT INTO parametri_incantesimi VALUES (150,1,90);
INSERT INTO parametri_incantesimi VALUES (150,2,8);
INSERT INTO parametri_incantesimi VALUES (150,5,0);
INSERT INTO parametri_incantesimi VALUES (151,19,10);
INSERT INTO parametri_incantesimi VALUES (152,19,20);
INSERT INTO parametri_incantesimi VALUES (153,18,20);
INSERT INTO parametri_incantesimi VALUES (154,18,25);
INSERT INTO parametri_incantesimi VALUES (155,1,90);
INSERT INTO parametri_incantesimi VALUES (155,4,30);
INSERT INTO parametri_incantesimi VALUES (156,2,8);
INSERT INTO parametri_incantesimi VALUES (156,3,30);
INSERT INTO parametri_incantesimi VALUES (157,27,6);
INSERT INTO parametri_incantesimi VALUES (158,27,15);
INSERT INTO parametri_incantesimi VALUES (159,27,23);
INSERT INTO parametri_incantesimi VALUES (160,13,3);
INSERT INTO parametri_incantesimi VALUES (161,27,6);
INSERT INTO parametri_incantesimi VALUES (162,27,15);
INSERT INTO parametri_incantesimi VALUES (163,27,23);
INSERT INTO parametri_incantesimi VALUES (164,11,3);
INSERT INTO parametri_incantesimi VALUES (165,13,1);
INSERT INTO parametri_incantesimi VALUES (166,17,10);
INSERT INTO parametri_incantesimi VALUES (167,12,1);
INSERT INTO parametri_incantesimi VALUES (168,16,20);
INSERT INTO parametri_incantesimi VALUES (169,16,25);
INSERT INTO parametri_incantesimi VALUES (170,16,30);
INSERT INTO parametri_incantesimi VALUES (171,15,15);
INSERT INTO parametri_incantesimi VALUES (172,16,20);
INSERT INTO parametri_incantesimi VALUES (172,31,0);
INSERT INTO parametri_incantesimi VALUES (173,18,1);
INSERT INTO parametri_incantesimi VALUES (174,16,25);
INSERT INTO parametri_incantesimi VALUES (175,17,20);
INSERT INTO parametri_incantesimi VALUES (176,16,15);
INSERT INTO parametri_incantesimi VALUES (177,16,25);
INSERT INTO parametri_incantesimi VALUES (178,17,10);
INSERT INTO parametri_incantesimi VALUES (179,17,15);
INSERT INTO parametri_incantesimi VALUES (180,17,10);
INSERT INTO parametri_incantesimi VALUES (181,27,6);
INSERT INTO parametri_incantesimi VALUES (182,27,15);
INSERT INTO parametri_incantesimi VALUES (183,27,23);
INSERT INTO parametri_incantesimi VALUES (184,17,10);
INSERT INTO parametri_incantesimi VALUES (185,18,25);
INSERT INTO parametri_incantesimi VALUES (186,15,20);
INSERT INTO parametri_incantesimi VALUES (187,18,30);
INSERT INTO parametri_incantesimi VALUES (188,26,5);
INSERT INTO parametri_incantesimi VALUES (189,18,30);
INSERT INTO parametri_incantesimi VALUES (190,13,3);
INSERT INTO parametri_incantesimi VALUES (191,16,15);
INSERT INTO parametri_incantesimi VALUES (192,16,20);
INSERT INTO parametri_incantesimi VALUES (193,16,20);
INSERT INTO parametri_incantesimi VALUES (194,15,15);
INSERT INTO parametri_incantesimi VALUES (195,1,90);
INSERT INTO parametri_incantesimi VALUES (195,9,60);
INSERT INTO parametri_incantesimi VALUES (195,101,100);
INSERT INTO parametri_incantesimi VALUES (196,2,6);
INSERT INTO parametri_incantesimi VALUES (196,32,100);
INSERT INTO parametri_incantesimi VALUES (197,13,6);
INSERT INTO parametri_incantesimi VALUES (198,18,25);
INSERT INTO parametri_incantesimi VALUES (199,1,90);
INSERT INTO parametri_incantesimi VALUES (199,10,10000);
INSERT INTO parametri_incantesimi VALUES (199,101,100);
INSERT INTO parametri_incantesimi VALUES (200,12,2);
INSERT INTO parametri_incantesimi VALUES (201,23,3);
INSERT INTO parametri_incantesimi VALUES (202,27,6);
INSERT INTO parametri_incantesimi VALUES (203,27,15);
INSERT INTO parametri_incantesimi VALUES (204,27,21);
INSERT INTO parametri_incantesimi VALUES (205,1,0);
INSERT INTO parametri_incantesimi VALUES (205,9,10);
INSERT INTO parametri_incantesimi VALUES (205,101,400);
INSERT INTO parametri_incantesimi VALUES (206,16,20);
INSERT INTO parametri_incantesimi VALUES (207,13,6);
INSERT INTO parametri_incantesimi VALUES (208,6,1);
INSERT INTO parametri_incantesimi VALUES (208,7,2);
INSERT INTO parametri_incantesimi VALUES (209,15,25);
INSERT INTO parametri_incantesimi VALUES (210,15,30);
INSERT INTO parametri_incantesimi VALUES (211,15,35);
INSERT INTO parametri_incantesimi VALUES (212,7,1);
INSERT INTO parametri_incantesimi VALUES (212,14,15);
INSERT INTO parametri_incantesimi VALUES (213,7,2);
INSERT INTO parametri_incantesimi VALUES (213,14,15);
INSERT INTO parametri_incantesimi VALUES (214,7,2);
INSERT INTO parametri_incantesimi VALUES (214,14,20);
INSERT INTO parametri_incantesimi VALUES (215,20,3);
INSERT INTO parametri_incantesimi VALUES (216,1,90);
INSERT INTO parametri_incantesimi VALUES (216,2,10);
INSERT INTO parametri_incantesimi VALUES (216,101,100);
INSERT INTO parametri_incantesimi VALUES (217,27,6);
INSERT INTO parametri_incantesimi VALUES (218,27,15);
INSERT INTO parametri_incantesimi VALUES (219,27,21);
INSERT INTO parametri_incantesimi VALUES (220,1,0);
INSERT INTO parametri_incantesimi VALUES (220,2,3);
INSERT INTO parametri_incantesimi VALUES (220,101,100);
INSERT INTO parametri_incantesimi VALUES (221,13,5);
INSERT INTO parametri_incantesimi VALUES (222,13,5);
INSERT INTO parametri_incantesimi VALUES (223,18,20);
INSERT INTO parametri_incantesimi VALUES (224,15,20);
INSERT INTO parametri_incantesimi VALUES (225,15,20);
INSERT INTO parametri_incantesimi VALUES (226,15,25);
INSERT INTO parametri_incantesimi VALUES (227,15,20);
INSERT INTO parametri_incantesimi VALUES (228,15,25);
INSERT INTO parametri_incantesimi VALUES (229,1,90);
INSERT INTO parametri_incantesimi VALUES (229,2,2);
INSERT INTO parametri_incantesimi VALUES (229,101,100);
INSERT INTO parametri_incantesimi VALUES (230,13,10);
INSERT INTO parametri_incantesimi VALUES (231,28,15);
INSERT INTO parametri_incantesimi VALUES (232,16,20);
INSERT INTO parametri_incantesimi VALUES (233,27,6);
INSERT INTO parametri_incantesimi VALUES (234,27,15);
INSERT INTO parametri_incantesimi VALUES (235,27,21);
INSERT INTO parametri_incantesimi VALUES (236,26,2);
INSERT INTO parametri_incantesimi VALUES (237,15,15);
INSERT INTO parametri_incantesimi VALUES (238,15,20);
INSERT INTO parametri_incantesimi VALUES (239,11,15);
INSERT INTO parametri_incantesimi VALUES (240,1,90);
INSERT INTO parametri_incantesimi VALUES (240,9,100);
INSERT INTO parametri_incantesimi VALUES (240,101,100);
INSERT INTO parametri_incantesimi VALUES (241,15,15);
INSERT INTO parametri_incantesimi VALUES (242,15,20);
INSERT INTO parametri_incantesimi VALUES (243,7,2);
INSERT INTO parametri_incantesimi VALUES (243,14,0);
INSERT INTO parametri_incantesimi VALUES (244,7,3);
INSERT INTO parametri_incantesimi VALUES (244,14,0);
INSERT INTO parametri_incantesimi VALUES (245,16,25);
INSERT INTO parametri_incantesimi VALUES (246,15,25);
INSERT INTO parametri_incantesimi VALUES (247,24,3);
INSERT INTO parametri_incantesimi VALUES (248,1,90);
INSERT INTO parametri_incantesimi VALUES (248,4,4);
INSERT INTO parametri_incantesimi VALUES (249,1,90);
INSERT INTO parametri_incantesimi VALUES (249,10,100);
INSERT INTO parametri_incantesimi VALUES (249,101,100);
INSERT INTO parametri_incantesimi VALUES (250,17,10);
INSERT INTO parametri_incantesimi VALUES (251,7,6);
INSERT INTO parametri_incantesimi VALUES (251,14,0);
INSERT INTO parametri_incantesimi VALUES (252,16,15);
INSERT INTO parametri_incantesimi VALUES (253,11,10);
INSERT INTO parametri_incantesimi VALUES (254,17,5);
INSERT INTO parametri_incantesimi VALUES (255,27,12);
INSERT INTO parametri_incantesimi VALUES (256,27,19);
INSERT INTO parametri_incantesimi VALUES (257,27,23);
INSERT INTO parametri_incantesimi VALUES (258,1,120);
INSERT INTO parametri_incantesimi VALUES (258,9,10);
INSERT INTO parametri_incantesimi VALUES (258,101,100);
INSERT INTO parametri_incantesimi VALUES (259,6,1);
INSERT INTO parametri_incantesimi VALUES (259,7,1);
INSERT INTO parametri_incantesimi VALUES (260,12,2);
INSERT INTO parametri_incantesimi VALUES (261,24,1);
INSERT INTO parametri_incantesimi VALUES (262,24,1);
INSERT INTO parametri_incantesimi VALUES (263,24,3);
INSERT INTO parametri_incantesimi VALUES (264,24,7);
INSERT INTO parametri_incantesimi VALUES (265,21,10);
INSERT INTO parametri_incantesimi VALUES (266,21,20);
INSERT INTO parametri_incantesimi VALUES (267,11,9);
INSERT INTO parametri_incantesimi VALUES (268,15,10);
INSERT INTO parametri_incantesimi VALUES (269,15,20);
INSERT INTO parametri_incantesimi VALUES (270,27,12);
INSERT INTO parametri_incantesimi VALUES (271,27,19);
INSERT INTO parametri_incantesimi VALUES (272,27,23);
INSERT INTO parametri_incantesimi VALUES (273,26,2);
INSERT INTO parametri_incantesimi VALUES (274,26,4);
INSERT INTO parametri_incantesimi VALUES (275,1,90);
INSERT INTO parametri_incantesimi VALUES (275,5,2);
INSERT INTO parametri_incantesimi VALUES (275,101,100);
INSERT INTO parametri_incantesimi VALUES (276,24,5);
INSERT INTO parametri_incantesimi VALUES (276,25,0);
INSERT INTO parametri_incantesimi VALUES (277,24,10);
INSERT INTO parametri_incantesimi VALUES (277,25,0);
INSERT INTO parametri_incantesimi VALUES (278,24,15);
INSERT INTO parametri_incantesimi VALUES (278,25,0);
INSERT INTO parametri_incantesimi VALUES (279,1,120);
INSERT INTO parametri_incantesimi VALUES (279,2,12);
INSERT INTO parametri_incantesimi VALUES (279,101,0);
INSERT INTO parametri_incantesimi VALUES (280,1,30);
INSERT INTO parametri_incantesimi VALUES (280,2,10);
INSERT INTO parametri_incantesimi VALUES (280,5,0);
INSERT INTO parametri_incantesimi VALUES (281,16,20);
INSERT INTO parametri_incantesimi VALUES (282,1,30);
INSERT INTO parametri_incantesimi VALUES (282,4,40);
INSERT INTO parametri_incantesimi VALUES (283,11,15);
INSERT INTO parametri_incantesimi VALUES (284,21,20);
INSERT INTO parametri_incantesimi VALUES (284,22,2);
INSERT INTO parametri_incantesimi VALUES (285,21,20);
INSERT INTO parametri_incantesimi VALUES (285,22,5);
INSERT INTO parametri_incantesimi VALUES (286,27,12);
INSERT INTO parametri_incantesimi VALUES (287,27,19);
INSERT INTO parametri_incantesimi VALUES (288,27,23);
INSERT INTO parametri_incantesimi VALUES (289,1,0);
INSERT INTO parametri_incantesimi VALUES (289,2,6);
INSERT INTO parametri_incantesimi VALUES (289,101,100);
INSERT INTO parametri_incantesimi VALUES (290,13,10);
INSERT INTO parametri_incantesimi VALUES (291,24,5);
INSERT INTO parametri_incantesimi VALUES (292,24,7);
INSERT INTO parametri_incantesimi VALUES (292,25,1);
INSERT INTO parametri_incantesimi VALUES (293,24,10);
INSERT INTO parametri_incantesimi VALUES (293,25,5);
INSERT INTO parametri_incantesimi VALUES (294,24,10);
INSERT INTO parametri_incantesimi VALUES (295,24,4);
INSERT INTO parametri_incantesimi VALUES (296,24,5);
INSERT INTO parametri_incantesimi VALUES (297,24,10);
INSERT INTO parametri_incantesimi VALUES (298,23,7);
INSERT INTO parametri_incantesimi VALUES (299,20,10);
INSERT INTO parametri_incantesimi VALUES (300,16,20);
INSERT INTO parametri_incantesimi VALUES (301,11,5);
INSERT INTO parametri_incantesimi VALUES (302,11,10);
INSERT INTO parametri_incantesimi VALUES (303,2,3);
INSERT INTO parametri_incantesimi VALUES (303,3,30);
INSERT INTO parametri_incantesimi VALUES (304,1,0);
INSERT INTO parametri_incantesimi VALUES (304,9,10);
INSERT INTO parametri_incantesimi VALUES (304,101,30);
INSERT INTO parametri_incantesimi VALUES (305,16,1);
INSERT INTO parametri_incantesimi VALUES (306,1,120);
INSERT INTO parametri_incantesimi VALUES (306,5,2);
INSERT INTO parametri_incantesimi VALUES (306,101,100);
INSERT INTO parametri_incantesimi VALUES (307,29,1);
INSERT INTO parametri_incantesimi VALUES (307,30,12);
INSERT INTO parametri_incantesimi VALUES (308,1,0);
INSERT INTO parametri_incantesimi VALUES (308,9,10);
INSERT INTO parametri_incantesimi VALUES (308,101,100);
INSERT INTO parametri_incantesimi VALUES (309,2,2);
INSERT INTO parametri_incantesimi VALUES (309,3,30);
INSERT INTO parametri_incantesimi VALUES (310,11,10);
INSERT INTO parametri_incantesimi VALUES (311,26,2);
INSERT INTO parametri_incantesimi VALUES (312,23,4);
INSERT INTO parametri_incantesimi VALUES (313,11,5);
INSERT INTO parametri_incantesimi VALUES (314,24,2);
INSERT INTO parametri_incantesimi VALUES (315,24,2);
INSERT INTO parametri_incantesimi VALUES (316,20,6);
INSERT INTO parametri_incantesimi VALUES (317,18,15);
INSERT INTO parametri_incantesimi VALUES (318,1,90);
INSERT INTO parametri_incantesimi VALUES (318,10,100);
INSERT INTO parametri_incantesimi VALUES (318,101,0);
INSERT INTO parametri_incantesimi VALUES (319,20,1);
INSERT INTO parametri_incantesimi VALUES (320,21,15);
INSERT INTO parametri_incantesimi VALUES (320,22,3);

#
# Table structure for table 'parametri_incantesimo'
#
CREATE TABLE parametri_incantesimo (
  incantesimo int(10) unsigned DEFAULT '0' NOT NULL,
  parametro int(10) unsigned DEFAULT '0' NOT NULL,
  valore int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (incantesimo,parametro)
);

#
# Dumping data for table 'parametri_incantesimo'
#


#
# Table structure for table 'potenzialita'
#
CREATE TABLE potenzialita (
  scuola int(10) unsigned DEFAULT '0' NOT NULL,
  categoria int(10) unsigned DEFAULT '0' NOT NULL,
  valore int(10) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (scuola,categoria)
);

#
# Dumping data for table 'potenzialita'
#

INSERT INTO potenzialita VALUES (1,1,13);
INSERT INTO potenzialita VALUES (1,2,8);
INSERT INTO potenzialita VALUES (1,3,14);
INSERT INTO potenzialita VALUES (1,4,20);
INSERT INTO potenzialita VALUES (1,5,12);
INSERT INTO potenzialita VALUES (1,6,8);
INSERT INTO potenzialita VALUES (2,1,12);
INSERT INTO potenzialita VALUES (2,2,17);
INSERT INTO potenzialita VALUES (2,3,11);
INSERT INTO potenzialita VALUES (2,4,5);
INSERT INTO potenzialita VALUES (2,5,13);
INSERT INTO potenzialita VALUES (2,6,17);
INSERT INTO potenzialita VALUES (3,1,9);
INSERT INTO potenzialita VALUES (3,2,5);
INSERT INTO potenzialita VALUES (3,3,20);
INSERT INTO potenzialita VALUES (3,4,11);
INSERT INTO potenzialita VALUES (3,5,14);
INSERT INTO potenzialita VALUES (3,6,16);
INSERT INTO potenzialita VALUES (4,1,16);
INSERT INTO potenzialita VALUES (4,2,20);
INSERT INTO potenzialita VALUES (4,3,5);
INSERT INTO potenzialita VALUES (4,4,14);
INSERT INTO potenzialita VALUES (4,5,11);
INSERT INTO potenzialita VALUES (4,6,9);
INSERT INTO potenzialita VALUES (5,1,20);
INSERT INTO potenzialita VALUES (5,2,9);
INSERT INTO potenzialita VALUES (5,3,15);
INSERT INTO potenzialita VALUES (5,4,11);
INSERT INTO potenzialita VALUES (5,5,5);
INSERT INTO potenzialita VALUES (5,6,15);
INSERT INTO potenzialita VALUES (6,1,5);
INSERT INTO potenzialita VALUES (6,2,16);
INSERT INTO potenzialita VALUES (6,3,10);
INSERT INTO potenzialita VALUES (6,4,14);
INSERT INTO potenzialita VALUES (6,5,20);
INSERT INTO potenzialita VALUES (6,6,10);
INSERT INTO potenzialita VALUES (7,1,15);
INSERT INTO potenzialita VALUES (7,6,10);
INSERT INTO potenzialita VALUES (8,1,5);
INSERT INTO potenzialita VALUES (8,3,5);
INSERT INTO potenzialita VALUES (8,4,15);

#
# Table structure for table 'scuole'
#
CREATE TABLE scuole (
  id int(10) unsigned DEFAULT '0' NOT NULL,
  nome varchar(50),
  PRIMARY KEY (id)
);

#
# Dumping data for table 'scuole'
#

INSERT INTO scuole VALUES (1,'Esistenza');
INSERT INTO scuole VALUES (2,'Necromanzia');
INSERT INTO scuole VALUES (3,'Illusionismo');
INSERT INTO scuole VALUES (4,'Elementalismo');
INSERT INTO scuole VALUES (5,'Stregoneria');
INSERT INTO scuole VALUES (6,'Demonologia');
INSERT INTO scuole VALUES (7,'Utilità');
INSERT INTO scuole VALUES (8,'Salvaguardia');

#
# Table structure for table 'tipi'
#
CREATE TABLE tipi (
  id int(10) unsigned DEFAULT '0' NOT NULL,
  nome varchar(100),
  categoria int(10) unsigned,
  dt int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id)
);

#
# Dumping data for table 'tipi'
#

INSERT INTO tipi VALUES (1,'Creazione Oggetti',1,19);
INSERT INTO tipi VALUES (2,'Creazione Esseri Viventi',1,29);
INSERT INTO tipi VALUES (3,'Modifica Anatomia per nuove funzioni',1,15);
INSERT INTO tipi VALUES (4,'Modifica Danni anatomia/armi',1,20);
INSERT INTO tipi VALUES (5,'Variazione proprietà fisiche',1,15);
INSERT INTO tipi VALUES (6,'Spostamento 3 dimensioni',1,19);
INSERT INTO tipi VALUES (7,'Spostamento sul piano',1,16);
INSERT INTO tipi VALUES (8,'Spostamento verticale',1,17);
INSERT INTO tipi VALUES (9,'Teletrasporto standard',1,19);
INSERT INTO tipi VALUES (10,'Teletrasporto intelligente',1,24);
INSERT INTO tipi VALUES (11,'Teletrasporto semintelligente',1,21);
INSERT INTO tipi VALUES (12,'Variazione abilità fisica',1,18);
INSERT INTO tipi VALUES (13,'Variazione caratteristica fisica',1,19);
INSERT INTO tipi VALUES (14,'Variazione dimensioni',1,17);
INSERT INTO tipi VALUES (101,'Danno Netto',2,21);
INSERT INTO tipi VALUES (102,'Danno Mirato',2,5);
INSERT INTO tipi VALUES (103,'Morte',2,18);
INSERT INTO tipi VALUES (104,'Stordimento',2,9);
INSERT INTO tipi VALUES (201,'Comando',3,11);
INSERT INTO tipi VALUES (202,'Possessione',3,11);
INSERT INTO tipi VALUES (203,'Variazione PSIche',3,10);
INSERT INTO tipi VALUES (204,'Variazione VOLontà',3,19);
INSERT INTO tipi VALUES (205,'Miraggio visivo',3,2);
INSERT INTO tipi VALUES (206,'Miraggio uditivo',3,1);
INSERT INTO tipi VALUES (207,'Miraggio olfattivo',3,2);
INSERT INTO tipi VALUES (208,'Miraggio tattile',3,4);
INSERT INTO tipi VALUES (209,'Miraggio visivo+uditivo',3,3);
INSERT INTO tipi VALUES (210,'Miraggio completo',3,9);
INSERT INTO tipi VALUES (215,'Illusione visiva',3,2);
INSERT INTO tipi VALUES (216,'Illusione uditiva',3,1);
INSERT INTO tipi VALUES (217,'Illusione olfattiva',3,2);
INSERT INTO tipi VALUES (218,'Illusione tattile',3,4);
INSERT INTO tipi VALUES (219,'Illusione visiva+uditiva',3,3);
INSERT INTO tipi VALUES (220,'Illusione completa',3,9);
INSERT INTO tipi VALUES (301,'Antimagia',4,15);
INSERT INTO tipi VALUES (302,'Armatura',4,19);
INSERT INTO tipi VALUES (303,'Deviazione',4,25);
INSERT INTO tipi VALUES (304,'Parata',4,15);
INSERT INTO tipi VALUES (305,'Protezione Magica',4,20);
INSERT INTO tipi VALUES (306,'Resurrezione',4,21);
INSERT INTO tipi VALUES (307,'Rianimazione',4,15);
INSERT INTO tipi VALUES (308,'Riparazione danni',4,15);
INSERT INTO tipi VALUES (309,'Cura',4,21);
INSERT INTO tipi VALUES (310,'Scudo antidinamico',4,21);
INSERT INTO tipi VALUES (401,'Controllo',5,14);
INSERT INTO tipi VALUES (402,'Richiamo',5,18);
INSERT INTO tipi VALUES (403,'Protezione',5,10);
INSERT INTO tipi VALUES (501,'Consiglio',6,9);
INSERT INTO tipi VALUES (502,'Dialogo',6,7);
INSERT INTO tipi VALUES (503,'Divinazione',6,9);
INSERT INTO tipi VALUES (504,'Interrogazione',6,6);
INSERT INTO tipi VALUES (505,'Registrazione',6,22);
INSERT INTO tipi VALUES (506,'Trasmissione',6,11);
INSERT INTO tipi VALUES (507,'Trasmissione+Ricezione',6,15);
INSERT INTO tipi VALUES (508,'Variazione abilità mentale',6,18);
INSERT INTO tipi VALUES (509,'Variazione CONoscenza',6,19);

