delete from incantesimi;
delete from parametri_incantesimi;

insert into incantesimi 
       (nome,       tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Acquadardo",102,  4,      1,      "target",   10,      NULL,
"Crea un dardo d'acqua che infligge 2d6 PV/PSC di danno, pi&ugrave;
ulteriori danni addizionali da emorragia. L'usufruitore, perch&eacute;
il dardo vada a segno, dovr&agrave; realizzare un attacco con una
base al TPC di 17. Il dardo scompare alla fine del round."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),7,2),(LAST_INSERT_ID(),14,17);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, tipo_durata, descrizione)
values ("Condensazione",1,4,1,      "target",1,'permanente',
"Crea 30 litri d'acqua ad una distanza massima di un metro
dall'usufruitore mediante condensazione del vapore acqueo. L'acqua
viene creata permanentemente"
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),2,1),(LAST_INSERT_ID(),3,30);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Controllo acqua",6,4,1,"target",4,7,
"Permette di spostare 1 metro cubo d'acqua alla velocità di 10 km/h facendogli
assumere le forme desiderate, purché l'acqua formi un corpo unico.
L'incantesimo dura 7 minuti."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,1000),(LAST_INSERT_ID(),9,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Controllo aria",6,4,1,"target",4,7,
"Permette di spostare con una corrente d'aria un target di peso massimo 60 kg con un equipaggiamento di massimo 100 kg alla velocità di 10 km/h"
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,100),(LAST_INSERT_ID(),1,60),(LAST_INSERT_ID(),9,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Controllo Elementali I",401,4,1,"target",4,3,
"Consente di controllare il comportamento di un elementale di potenza
massima 10, situata a massimo 4 metri di distanza dal mago, per 3 minuti.
Perch&eacute; il controllo abbia luogo, il mago deve vincere un Confronto di TV con la
creatura se questa &egrave; una creatura errante oppure realizzare un TV maggiore
del TV effettuato da colui che detiene il controllo sulla creatura."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Controllo Elementali II",401,4,1,"target",4,3,
"Consente di controllare il comportamento di un elementale di potenza
massima 17, situata a massimo 4 metri di distanza dal mago, per 3 minuti.
Perchè il controllo abbia luogo, il mago deve vincere un Confronto di TV con la
creatura se questa è una creatura errante oppure realizzare un TV maggiore
del TV effettuato da colui che detiene il controllo sulla creatura."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,17);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Controllo Elementali III",401,4,1,"target",4,3,
"Consente di controllare il comportamento di un elementale di potenza
massima 24, situata a massimo 4 metri di distanza dal mago, per 3 minuti.
Perchè il controllo abbia luogo, il mago deve vincere un Confronto di TV con la
creatura se questa è una creatura errante oppure realizzare un TV maggiore
del TV effettuato da colui che detiene il controllo sulla creatura."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,24);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Controllo fuoco",6,4,1,"target",13,7,
"Permette di spostare una fiamma che si trovi alla distanza massima di 13
metri dall'usufruitore per 7 minuti ed alla velocità massima di 10 Km/h. La
base della fiamma deve essere sempre a contatto con un materiale
infiammabile."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),9,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Controllo pietra",6,4,3,"m",10,3,
"Permette di spostare 2000 kg di pietre che si trovino entro 3 metri di raggio ed
alla distanza massima di 10 metri dall'usufruitore, alla velocità di 10 km/h.
L'incantesimo dura 3 minuti."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,2000),(LAST_INSERT_ID(),9,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values ("Corazza di Pietra",302,4,1,"target",0,3,
"Riveste il corpo del Target di una corazza di Pietra che gli offre una protezione
di 5 PP per 3 minuti."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),20,5);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values ("Corrente ascensionale",6,4,1,"target",0,3,"concentrazione",
"Crea una corrente d'aria che permette al target di volare alla velocità di 100
Km/h per tutto il tempo in cui l'usufruitore resta concentrato. Se l'usufruitore
perde la concentrazione l'incantesimo dura per ulteriori 3 minuti."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,30),(LAST_INSERT_ID(),9,100),(LAST_INSERT_ID(),1,120);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni acqua I",14,4,1,"target",0,3,"concentrazione",
"Permette all'usufruitore di aumentare o diminuire di 6 volte le dimensioni di
100 litri d'acqua. Gli elementali dell'acqua possono usarlo per cambiare le
proprie. L'incantesimo dura a concentrazione. Se l'usufuitore perde la
concentrazione l'incantesimo dura per ulteriori 3 minuti. Alla fine
dell'incantesimo l'acqua riprende le dimensioni originali."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,100),(LAST_INSERT_ID(),5,6);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni acqua II",14,4,1,"target",0,3,"concentrazione",
"Permette all'usufruitore di aumentare o diminuire di 10 volte le dimensioni di
300 litri d'acqua. Gli elementali dell'acqua possono usarlo per cambiare le
proprie. L'incantesimo dura a concentrazione. Se l'usufuitore perde la
concentrazione l'incantesimo dura per ulteriori 3 minuti. Alla fine
dell'incantesimo l'acqua riprende le dimensioni originali."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,300),(LAST_INSERT_ID(),5,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni fuoco I",14,4,1,"target",0,3,"concentrazione",

"Permette all'usufruitore di raddoppiare o dimezzare le dimensioni di una
fiamma. Gli elementali del fuoco possono usarlo per cambiare le proprie.
L'incantesimo dura a concentrazione. Se l'usufuitore perde la concentrazione
l'incantesimo dura per ulteriori 3 minuti. Alla fine dell'incantesimo la fiamma
riprende le dimensioni originali."

);

insert into parametri_incantesimi values (LAST_INSERT_ID(),5,2);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni fuoco II",14,4,1,"target",0,3,"concentrazione",
"Permette all'usufruitore di aumentare o diminuire di 5 volte le dimensioni di
una fiamma. Gli elementali del fuoco possono usarlo per cambiare le proprie.
L'incantesimo dura a concentrazione. Se l'usufuitore perde la concentrazione
l'incantesimo dura per ulteriori 3 minuti. Alla fine dell'incantesimo la fiamma
riprende le dimensioni originali."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),5,5);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni pietra I",14,4,1,"target",0,3,"concentrazione",
"Permette all'usufruitore di aumentare o diminuire di 10 volte le dimensioni di 200
kg di pietra. Gli elementali della pietra possono usarlo per cambiare le proprie.
L'incantesimo dura a concentrazione. Se l'usufuitore perde la concentrazione
l'incantesimo dura per ulteriori 3 minuti. Alla fine dell'incantesimo la pietra
riprende le dimensioni originali."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,200),(LAST_INSERT_ID(),5,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, tipo_durata, descrizione)
values
       ("Dimensioni pietra II",14,4,1,"target",0,3,"concentrazione",

"Permette all'usufruitore di aumentare o diminuire di 14 volte le dimensioni di 200
kg di pietra. Gli elementali della pietra possono usarlo per cambiare le proprie.
L'incantesimo dura a concentrazione. Se l'usufuitore perde la concentrazione
l'incantesimo dura per ulteriori 3 minuti. Alla fine dell'incantesimo la pietra
riprende le dimensioni originali."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),101,100),(LAST_INSERT_ID(),5,14);


insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Evocazione elementali I",402,4,1,"target",1,3,
"Il Mago richiama un Elementale del Fuoco Minore o un Elementale dell'Aria
Minore, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago
vinca un Confronto di TV con l'elementale. Se l'elementale vince il confronto torna
nel suo elemento senza sottostare ai comandi dell'evocatore. Alla fine della durata,
se l'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,10);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Evocazione elementali II",402,4,1,"target",1,3,
"Con questo incantesimo il mago è in grado di richiamare un elementale dell' Aria
maggiore o un elementale del Fuoco Maggiore (o un elementale di potenza inferiore),
che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca un
Confronto di TV con l'elementale. Se l'elementale vince il confronto torna nel suo
elemento senza sottostare ai comandi dell'evocatore. Alla fine della durata, se
l'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà."

);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,17);

insert into incantesimi 
       (nome, tipo, scuola, raggio, tipo_raggio, gittata, durata, descrizione)
values
       ("Evocazione elementali III",402,4,1,"target",1,3,

"Con questo incantesimo il mago è in grado di richiamare un elementale della Pietra
maggiore o un elementale dell' Acqua Maggiore (o un elementale di potenza
inferiore), che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago
vinca un confronto di TV con l'elementale. Se l'elementale vince il confronto torna nel
suo elemento senza sottostare ai comandi dell'evocatore. Alla fine della durata, se
l'elementale non viene rimandato al suo elemento, è libero di agire di sua volontà."
);

insert into parametri_incantesimi values (LAST_INSERT_ID(),27,24);# -- Fango in Pietra --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fango in Pietra",5,4,1,"target",1,"N",NULL, 3,"permanente",NULL,0, "Cementifica permanentemente un metro cubo circa di fango. ");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 2, 4),(LAST_INSERT_ID(), 101, 1000);

# -- Forma Acqua --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Forma Acqua",5,4,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Consente di far prendere ad un target del peso
massimo di 90 kg (ed al suo equipaggiamento, del peso massimo 
di 30 kg), purché questi venga toccato dal mago al momento
del lancio dell'incantesimo, la consistenza dell'acqua.
Il target potrà muoversi nell'acqua liberamente 
e senza aver bisogno di respirare ma non potrà spostare oggetti, 
attaccare, parlare e lanciare altri incantesimi. 
Il target in questo stato è immune agli attacchi fisici. 
Il Target non è individuabile se si trova nell'acqua. 
L'incantesimo dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1,  90),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 101, 30);

# -- Forma Aria --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Forma Aria",5,4,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Consente di far prendere ad un target del peso massimo di 90 kg (ed al suo equipaggiamento, del peso massimo di 30 kg), purché questi venga toccato dal mago al momento del lancio dell'incantesimo, la consistenza dell'aria. Il target potrà muoversi nell'aria liberamente come se stesse nuotando ma non potrà spostare oggetti, attaccare, parlare e lanciare altri incantesimi. Il target in questo stato è immune agli attacchi fisici. Il Target diviene praticamente invisibile (TOSS per individuarlo a diff. 24). L'incantesimo dura 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 101, 30);

# -- Fossa --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fossa",9,4,1,"m",13,"N",NULL,  3,NULL,NULL,0, "Crea una fossa di 2 metri cubi nella terra, sabbia o altro
materiale pietroso non compatto, ad una distanza massima di
13 metri dal mago, teletrasportando la terra ad un metro di
distanza.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 3, 300),(LAST_INSERT_ID(), 10, 1);

# -- Meteora --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Meteora",101,4,10,"m",19,"N",NULL,0  ,NULL,NULL,0, 
"Crea una meteora che precipitando a terra ad una distanza
massima di 19 metri dall'usufruitore provoca a tutti coloro che si
trovino entro 10 metri dal punto di impatto, 10d6 PV di danno
più eventuali danni addizionali da Emorragia Interna. Il danno
diretto può essere dimezzato realizzando un TR a difficoltà 30.
Danni addizionali: da Emorragia Interna");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 10);

# -- Muro di fuoco --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Muro di fuoco",101,4,5,"m",1,"N",NULL,  3,NULL,NULL,0, "Crea una muraglia di fuoco ad una distanza massima di 1
metro dall'usufruitore, lunga 10 metri e alta fino 5 che provoca a
chiuque la attraversi un danno di 2d6 PV più eventuali danni
addizionali da ustione. Le vittime possono dimezzare i danni
diretti realizzando un TR a difficoltà 14. Il muro scompare dopo
3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 2);

# -- Palla di Fuoco I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Palla di Fuoco I",101,4,4,"m",10,"N",NULL, NULL,NULL,NULL,0, "Crea una palla di fuoco ad una distanza massima di 10 metri
dall'usufruitore che esplodendo provoca 6d6 PV di danno (più
eventuali danni addizionali da ustione) a tutti coloro si trovino
nel raggio di 4 metri dall'epicentro. Tali danni possono essere
dimezzati realizzando un TR a difficoltà 22.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Palla di Fuoco II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Palla di Fuoco II",101,4,5,"m",16,"N",NULL, NULL,NULL,NULL,0, "Crea una palla di fuoco ad una distanza massima di 16 metri
dall'usufruitore che esplodendo provoca 8d6 PV di danno (più
eventuali danni addizionali da ustione) a tutti coloro si trovino
nel raggio di 5 metri dall'epicentro. Tali danni possono essere
dimezzati realizzando un TR a difficoltà 26.
Danni addizionali: da ustione");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 8);

# -- Parlare agli Elementi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Parlare agli Elementi",504,4,1,"d6 target",1,"N",NULL, NULL,NULL,NULL,0, "Permette di parlare ad un qualsiasi elemento: acqua, aria, terra,
fuoco, che si trovi a meno di un metro dall'usufruitore. Potranno
essere poste 1d6 di domande e l'elemento risponderà in relazione
alla sua esperienza diretta negli ultimi 9 anni.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, NULL),(LAST_INSERT_ID(), 31, 9);

# -- Pietrificazione I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pietrificazione I",103,4,1,"target",7,"N",NULL, NULL,NULL,NULL,0, "Provoca la pietrificazione di un target che non realizzi un TR a
difficoltà 25 facendone cessare completamente l'attività vitale. Il
target può tornare in vita mediante Resurrezione. ");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 25);

# -- Pietrificazione II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pietrificazione II",103,4,3,"m",10,"N",NULL, NULL,NULL,NULL,0, "Provoca la pietrificazione di tutti gli esseri che si trovano in
un'area di 3 metri di raggio e distante massimo 10 metri, che
non realizzino un TR a difficoltà 34, facendone cessare
completamente l'attività vitale. Le vittime possono tornare in vita
mediante Resurrezione. 
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 34);

# -- Pirodardo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pirodardo",102,4,1,"target",10,"N",NULL, NULL,NULL,NULL,0, "Crea una freccia di fuoco che infligge 1d6 PV/PSC di danno.
L'usufruitore, perché la freccia vada a segno dovrà realizzare un
attacco con una base al TPC di 15. La freccia scompare alla fine
del round.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 1),(LAST_INSERT_ID(), 14, 15);

# -- Protezione Elementali I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Elementali I",403,4,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio
all'interno della quale gli elementali di potenza inferiore o uguale
a 10 non possono entrare se non realizzando un TV a difficoltà
20. Realizzando un TV le creature potranno avanzare di 1
metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno
dell'area di protezione attacca le creature dalle quali si sta
proteggendo. Per ogni metro all'interno dell'area il TV delle
creature è penalizzato di -1. L'incantesimo perdura per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 10);

# -- Protezione Elementali II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Elementali II",403,4,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio
all'interno della quale gli elementali di potenza inferiore o uguale
a 17 non possono entrare se non realizzando un TV a difficoltà
27. Realizzando un TV le creature potranno avanzare di 1
metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno
dell'area di protezione attacca le creature dalle quali si sta
proteggendo. Per ogni metro all'interno dell'area il TV delle
creature è penalizzato di -1. L'incantesimo perdura per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 17);

# -- Protezione Elementali III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Elementali III",403,4,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio
all'interno della quale gli elementali di potenza inferiore o uguale
a 24 non possono entrare se non realizzando un TV a difficoltà
34. Realizzando un TV le creature potranno avanzare di 1
metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno
dell'area di protezione attacca le creature dalle quali si sta
proteggendo. Per ogni metro all'interno dell'area il TV delle
creature è penalizzato di -1. L'incantesimo perdura per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 24);

# -- Ragnatela di Fuoco I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ragnatela di Fuoco I",101,4,1,"m",7,"N",NULL, NULL,NULL,NULL,0, "Crea una ragnatela di fuoco di 1 metro di raggio ad una
distanza massima di 7 metri dall'usufruitore, che infligge 4d6
PV di danno a tutti coloro si trovino nel campo d'azione. Le
vittime possono realizzare un TR a difficoltà 18 per dimezzare i
danni. Produce anche danni addizionali da fuoco.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 4);

# -- Ragnatela di Fuoco II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ragnatela di Fuoco II",101,4,5,"m",10,"N",NULL, NULL,NULL,NULL,0, "Crea una ragnatela di fuoco di 5 metri di raggio ad una
distanza massima di 7 metri dall'usufruitore, che infligge 4d6
PV di danno a tutti coloro si trovino nel campo d'azione. Le
vittime possono realizzare un TR a difficoltà 18 per dimezzare i
danni. Produce anche danni addizionali da fuoco.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 4);

# -- Ritenzione Idrica --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ritenzione Idrica",103,4,1,"target",4,"N",NULL, NULL,NULL,"1d4 settimane",0, "Provoca la morte di un target in 1d4 settimane se questi non
realizza un TR a difficoltà 22, per impossibilità ad espellere i
fluidi corporei.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 22);

# -- Sciabola di Vento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sciabola di Vento",102,4,1,"target",7,"N",NULL, NULL,NULL,NULL,0, "Crea una lama d'aria che infligge 2d6 PV/PSC di danno.
L'usufruitore, perché la lama vada a segno dovrà realizzare un
attacco con una base al TPC di 13. la lama scompare alla fine del
round.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 13);

# -- Scudo d'acqua --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Scudo d'acqua",310,4,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea uno scudo d'acqua attorno al target che gli permette di dimezzare tutti i danni da botta, da punta e da taglio che gli vengono inflitti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Scudo di sabbia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Scudo di sabbia",310,4,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Crea uno scudo di sabbia attorno al target che gli permette di dividere per
5 tutti i danni da botta, da punta e da taglio che gli vengono inflitti. L'incantesimo
perdura per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 5);

# -- Sfera di vuoto I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera di vuoto I",101,4,1,"m",7,"N",NULL, NULL,NULL,NULL,0, "Crea una sfera di vuoto del raggio di 1 metro, ad una distanza massima di 7 metri dall'usufruitore, che provoca a tutti coloro che si trovino all'interno del campo d'azione 5d6 PV di danno. Tali danni possono essere dimezzati realizzando
un TR a difficoltà 18.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 4);

# -- Sfera di vuoto II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera di vuoto II",101,4,4,"m",10,"N",NULL, NULL,NULL,NULL,0, "Crea una sfera di vuoto del raggio di 4 metri, ad una distanza massima di 10
metri dall'usufruitore, che provoca a tutti coloro che si trovino all'interno
del campo d'azione 5d6 PV di danno. Tali danni possono essere dimezzati realizzando
un TR a difficoltà 20. Produce danni addizionali da Emorragia");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 5);

# -- Spada di ghiaccio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Spada di ghiaccio",4,4,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Trasforma il braccio del Target in una Spada di Ghiaccio in grado di produrre
3d6 PV/PSC di danno quando va a segno. Produce i Danni Addizionali tipici delle
ATL.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 10),(LAST_INSERT_ID(), 7, 3);

# -- Tempesta di Ghiaccio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tempesta di Ghiaccio",101,4,6,"m",10,"Y",NULL, NULL,NULL,NULL,0, "Crea una tempesta di ghiaccio che produce 6d6 PV di danno, più eventuali
danni addizionali da ustione, in un'area di 6 metri di raggio che si trovi
fino a 10 metri dall'usufruitore. L'incantesimo investe inoltre tutti coloro
che si trovino in una fascia rettangolare larga 12 metri che va dall'usufruitore
al punto di arrivo dell'incantesimo. Le vittime possono dimezzare i danni diretti
realizzando un TR a difficoltà 22. L'incantesimo produce danni addizionali da ustione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Terradardo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Terradardo",102,4,1,"target",13,"N",NULL, NULL,NULL,NULL,0, "Crea un dardo di pietra che infligge 3d6 PV/PSC di danno (più eventuali
Danni Addizionali da Emorragia) ad un target che si trova ad una distanza massima
di 13 metri dall'usufruitore. L'usufruitore, perché il dardo vada a segno dovrà
realizzare un attacco con una base al TPC di 15. Il dardo scompare alla fine
del round.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 3),(LAST_INSERT_ID(), 14, 20);


# -- Terremoto --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Terremoto",101,4,11,"m",0,"N",NULL, NULL,NULL,NULL,0, "Il Mago è l'epicentro di un Terremoto di 11 metri di raggio che provoca
8d6 PV di danno più eventuali danni addizionali da Emorragia a tutti coloro
che si trovino in tale area. Le vittime possono dimezzare il danno realizzando
un TR a difficoltà 26. Il mago è escluso da questo danno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 8);

# -- Ululato di Vento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ululato di Vento",104,4,1,"m",7,"N",NULL, NULL,NULL,NULL,0, "Stordisce per il round in corso e per quello successivo tutti coloro nel raggio
di 1 metro ed alla distanza massima di 7 metri dell'usufruitore che non realizzino
un TR a difficoltà 20");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Viaggio per Via Acqua --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Viaggio per Via Acqua",11,4,1,"m",0,"N",NULL, NULL,NULL,NULL,0, "Permette di Teletrasportare istantaneamente tutti gli oggetti del peso totale
massimo di 100 kg e tutti gli esseri viventi di peso totale massimo di 90 kg
(mago compreso) che si trovino ad un metro dal mago, in un punto distante massimo
10 km in cui si trovi una grande concentrazione di acqua (Lago, fiume, mare,etc...)
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 10000),(LAST_INSERT_ID(), 101, 100);

# -- Viaggio per Via Roccia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Viaggio per Via Roccia",11,4,1,"m",0,"N",NULL, NULL,NULL,NULL,0, "Permette di Teletrasportare istantaneamente tutti gli oggetti del peso totale
massimo di 200 kg e tutti gli esseri viventi di peso totale massimo di 90 kg
(mago compreso) che si trovino ad un metro dal mago, in un punto distante massimo
10 km in cui si trovi una grande concentrazione di pietra (montagna, castello
di pietra, ecc.)");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 10000),(LAST_INSERT_ID(), 101, 200);

#-----------------------------------------------------------------
# Demonologia
#-----------------------------------------------------------------

# -- Acido (Arkyox)  --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Acido (Arkyox) ",102,6,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Dal mago parte uno spruzzo di acido che infligge ad un target a massimo 4 metri
di distanza 1d6 PV/PSC di danno con base al TPC di 10.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 1),(LAST_INSERT_ID(), 14, 10);

# -- Ammorbidente (Rimmom) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ammorbidente (Rimmom)",5,6,4,"m",10,"N",NULL, 3,NULL,NULL,0, "Rende gli oggetti posti in un`area con un raggio di 4 metri, a distanza
di massimo 10 metri dal mago, morbidi e inadatti a sorreggere pesi o a resistere
agli urti. Il demone compare sotto forma di una zanzara che succhia materia dagli oggetti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 100),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 101, NULL);

# -- Anima diabolica (Foran) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Anima diabolica (Foran)",2,6,1,"target",0,"N",NULL, NULL,NULL,"1d6 giorni",0, "Anima un oggetto (un monile, un`arma etc..) di 90 kg di peso massimo. L'incantesimo attribuisce 10 ad ogni caratteristica. L'oggetto si anima in 1d6 giorni.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 4, 80);

# -- Aura demoniaca (Roneues) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Aura demoniaca (Roneues)",301,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Riveste il target di un`aura demoniaca rossastra che rende inattivo per
3 minuti qualsiasi incantesimo diretto al target con una base Antimagia di 20");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 19, 20);

# -- Boccaglio (Gredlur) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Boccaglio (Gredlur)",3,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Un demone dalla forma di tubo telescopico (fino a 1 metro e 1/2) si collega
con la bocca e il naso del target consentendogli di respirare sott'acqua
o sotto terra. Il demone scompare dopo 3 minuti");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 5),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 5, NULL);

# -- Colonna di fuoco (Ighnar) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Colonna di fuoco (Ighnar)",101,6,2,"m",10,"N",NULL, NULL,NULL,NULL,0, "Emette una fiammata che si propaga dal basso verso l'alto e che provoca 4d6 PV
di danno su un'area di 2 metri di raggio situata fino a 10 metri dal mago.
I danni possono essere dimazzati realizzando un TR a difficoltà 18.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 4);

# -- Corazza infernale (Reshpus) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Corazza infernale (Reshpus)",302,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Un demone che appare come una fascia corazzata avvolge il corpo del target fornendogli
5 PP su tutto il corpo per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 5);

# -- Decuria di Mammon --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Decuria di Mammon",402,6,10,"target",1,"N",NULL, 3,NULL,NULL,0, "Il mago evoca 10 demoni guerrieri Mammon. Il TV per il controllo viene effettuato
separatamente da ciascuno di essi.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 4);

# -- Demone del gioco (Abolam) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Demone del gioco (Abolam)",12,6,1,"target",0,"N",NULL, 3,"concentrazione",NULL,0, "Conferisce al target un bonus di +5 all'abilità Barare per la durata della
concentrazione del mago + 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Difensore (Pazooso) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Difensore (Pazooso)",305,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Il target viene protetto dal demone difensore che si manifesta come uno sciame
di insetti vorticante che gli assorbe 4d6 PV di danno provocato dagli incantesimi
di Attacco/Danno Netto. L'incantesimo ha durata 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 23, 4);

# -- Doppelganger (Hutgin) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Doppelganger (Hutgin)",210,6,2,"m",7,"N",NULL, 15,NULL,NULL,0, "Un demone assume le sembianze del mago e si rende visibile ad una distanza di
massimo 7 metri dal mago stesso senza peraltro potersi muovere al di fuori di
un'area di 2 metri di raggio. Realizzando un TOSS a difficoltà 20 ci
si rende conto che si tratta di una copia, che sparisce se si realizza un TV
a difficoltà 20. La copia non può combattere. L'incantesimo dura 15
minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 20);

# -- Evoca Alastor --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Alastor",402,6,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca il demone guerriero Alastor per 3 minuti. Il mago può impartirgli
ordini se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 14);

# -- Evoca Ammon --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Ammon",402,6,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca il demone guerriero Ammon per 3 minuti. Il mago può impartirgli ordini
se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 9);

# -- Evoca Arioch --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Arioch",402,6,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca il demone guerriero Arioch per 3 minuti. Il mago può impartirgli
ordini se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 30);

# -- Evoca Mammon --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Mammon",402,6,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca il demone guerriero Mammon per 3 minuti. Il mago può impartirgli
ordini se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 4);

# -- Evoca Strayesor --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Strayesor",402,6,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca il demone guerriero Strayesor per 3 minuti. Il mago può impartirgli
ordini se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Fascino satanico (Kham) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fascino satanico (Kham)",201,6,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Gli esseri situati all'interno di un'area di un metro di raggio che non
realizzano un TV a difficoltà 20 vengono affascinati irresistibilmente
dal mago per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Fiamma demoniaca (Rahouart) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fiamma demoniaca (Rahouart)",101,6,10,"m",19,"Y",NULL, NULL,NULL,NULL,0, "Fa partire dal mago una fiammata larga 20 metri che distrugge tutto ciò
che trova per una gittata di massimo 19 metri esplodendo al termine, in un'area
di 10 metri di raggio provocando a tutti gli oggetti investiti un danno di 10d6
PV. Le vittime possono dimezzare il danno realizzando un TR a difficoltà
30. La fiamma può produrre danni addizionali.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 10);

# -- Filamento adesivo (Poimon) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Filamento adesivo (Poimon)",304,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Dal corpo del target si diparte un filamento adesivo atto a parare un colpo
con Base TPD 5. Dopo 3 minuti o dopo una parata il filamento scompare.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 5),(LAST_INSERT_ID(), 22, 1);



# -- Freccia demoniaca (Dreayn) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Freccia demoniaca (Dreayn)",102,6,1,"target",10,"N",NULL, NULL,NULL,NULL,0, "Fa scaturire dal mago un piccolo demone simile ad una larva dotata di zanne
che si scaglia sul target, distante massimo 10 metri, mordendolo e infliggendogli
1d6 PV/PSC di danno. La base TPC è 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 1),(LAST_INSERT_ID(), 14, 15);

# -- Globo demoniaco (Kira) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Globo demoniaco (Kira)",301,6,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Crea un globo di luce demoniaca rossastra di 1 metro di raggio per 3 minuti.
Qualunque incantesimo diretto ad esseri od oggetti all'interno del globo sarà
neutralizzato con una base antimagia di 20. Il mago può creare il globo
fino a 1 metro di distanza da se.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 19, 20);

# -- Guanto (Adramelek) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guanto (Adramelek)",103,6,1,"target",0,"N",NULL,NULL,NULL,NULL,0, "Il target che non realizza un TR a difficoltà 20 viene rivoltato come un
guanto, morendo istantaneamente.  
I l corpo torna intatto dopo un incantesimo di resurrezione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Guaritore (Baribars) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guaritore (Baribars)",309,6,1,"m",1,"N",NULL, NULL,NULL,NULL,0, "Con questo incantesimo, il mago è in grado, grazie al demone Guaritore,
di curare 3d6 PV/PSC di danno a tutti gli esseri viventi posti ad una distanza
massima di 1 metro da lui ed in un area di 1 metro di raggio.
L'incantesimo lascia tracce visibili della cura sotto forma di 
escrescenze cutanee o simili.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 3);

# -- Individua demoni (Zebuliel) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Individua demoni (Zebuliel)",503,6,10,"m",0,"N",NULL, 3,NULL,NULL,0, "L'incantesimo individua la presenza di uno o più demoni nel raggio di 10
metri, senza indicarne la collocazione.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 29, 10),(LAST_INSERT_ID(), 30, NULL);

# -- Intercettatore (Zyunsak) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Intercettatore (Zyunsak)",304,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Il target viene protetto dal Demone intercettatore in grado di parare 5 attacchi
fisici o di Attacco/Danno Mirato con una base di parata di 15. Il demone svanisce
dopo 3 minuti oppure dopo aver parato 5 attacchi.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 15),(LAST_INSERT_ID(), 22, 5);

# -- Macellaio (Greayn) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Macellaio (Greayn)",102,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "La vittima viene scuoiata nel punto di contatto con la mano dell'usufruitore,
ricevendo 3d6 PV/PSC di danno. Infligge danni addizionali da emorragia.
L'usufruitore potrebbe dover realizzare un TPC con l'abllità CAC.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 3),(LAST_INSERT_ID(), 14, NULL);

# -- Mantici (Iblis) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Mantici (Iblis)",6,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Alcuni piccoli demoni che ingoiano ed emettono aria si attaccano al corpo del
target del peso massimo di 90 kg e con un equipaggiamento di massimo 100 kg,
consentendogli di volare per 3 minuti a 100 km/h.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 9, 100),(LAST_INSERT_ID(), 101, 90);

# -- Messaggero (Belialys) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Messaggero (Belialys)",507,6,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Un demone messaggero recapita istantaneamente un messaggio scritto di poche
pagine ad un target posto ad una distanza massima di 10 km, ricevendo una eventuale
risposta e riportandola al mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 4),(LAST_INSERT_ID(), 32, 10000);

# -- Patto Demoniaco (Haflain) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Patto Demoniaco (Haflain)",201,6,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Con questo incantesimo il mago può, grazie al demone persuasore, obbligare
tutti coloro che si trovano alla distanza massima di 1 metro e nell'area di
1 metro di raggio, ad eseguire un ordine a suo piacimento, se questi non realizzano
un TV a difficoltà 20. Per tutte le vittime l'ordine è lo stesso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Pelle robusta (Tsu Nyao) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pelle robusta (Tsu Nyao)",302,6,1,"target",0,"N",NULL, 7,NULL,NULL,0, "La pelle del target si ingrossa e si ricopre di escrescenze cornee che la rendono
dura e dotata di 1 PP, per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 1);

# -- Pelle viscida (Abludar) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pelle viscida (Abludar)",12,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Il target viene rivestito da uno strato di liquido viscoso e scivoloso che gli
conferisce un bonus di +5 al TOT della Specifica di AM ``divincolarsi''.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Portatore di dolore (Koim) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Portatore di dolore (Koim)",508,6,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Il demone conferisce al target un bonus di +5 all'abilità Torture per 15
minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Possesso diabolico (Behemoth) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Possesso diabolico (Behemoth)",202,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "L'usufruitore si impossessa del corpo di un target per 3 minuti, se questi non
realizza un TV a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Protezione dai Demoni I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione dai Demoni I",403,6,3,"m",4,"N",NULL, 3,NULL,NULL,0, "Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un'area
di 3 metri di raggio all'interno della quale i Demoni di potenza uguale o inferiore
a 9 non possono entrare se non realizzando un TV a difficoltà 19. Realizzando
il TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per
ogni metro all'interno dell'area, L'incantesimo scompare se il mago attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 9);

# -- Protezione dai Demoni II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione dai Demoni II",403,6,3,"m",4,"N",NULL, 3,NULL,NULL,0, "Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un'area
di 3 metri di raggio all'interno della quale i Demoni di potenza uguale o inferiore
a 19 non possono entrare se non realizzando un TV a difficoltà 29. Realizzando
il TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per
ogni metro all'interno dell'area, L'incantesimo scompare se il mago attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Protezione dai Demoni III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione dai Demoni III",403,6,3,"m",4,"N",NULL, 3,NULL,NULL,0, "Viene creata, attorno ad un punto distante al massimo 4 metri dal mago, un'area
di 3 metri di raggio all'interno della quale i Demoni di potenza uguale o inferiore
a 30 non possono entrare se non realizzando un TV a difficoltà 40. Realizzando
il TV le creature potranno avanzare di 1 metro, subendo 1d6 PV di danno per
ogni metro all'interno dell'area, L'incantesimo scompare se il mago attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 30);

# -- Rostro (Morkooya) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Rostro (Morkooya)",4,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Il braccio del target viene rivestito da una superficie dura, rugosa e dotata
di punte acuminate, rendendo il danno base di Pugno pari a 1d4 + 2d6. L'incantesimo
dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 5),(LAST_INSERT_ID(), 7, 2);

# -- Schermo dell'Oblio (Krisral) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Schermo dell'Oblio (Krisral)",303,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Il Target viene protetto da uno schermo che para tutti gli attacchi fisici o
di Attacco/Danno Mirato con base TPD 20. L'incantesimo dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 20);

# -- Seduttore (Azazel) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Seduttore (Azazel)",12,6,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Conferisce al target un bonus di +5 all'abilità Sedurre per 15 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Sguardo di fuoco (Ayperos) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sguardo di fuoco (Ayperos)",3,6,1,"target",0,"N",NULL, 3,"concentrazione",NULL,0, "Gli occhi del target saranno modificati in modo da vedere al buio. Gli occhi
brilleranno di una sinistra luce rossastra. L'incantesimo dura a concentrazione
più 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 1),(LAST_INSERT_ID(), 2, 5),(LAST_INSERT_ID(), 5, NULL);

# -- Sottomissione Demoni I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sottomissione Demoni I",401,6,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di sottomettere ai propri ordini un demone di potenza massima pari
a 9 per 3 minuti. Il mago può impartirgli ordini se vince un confronto
di TV con esso se è un essere errante, o con chi lo domina se è controllato..");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 9);

# -- Sottomissione Demoni II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sottomissione Demoni II",401,6,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di sottomettere ai propri ordini un demone di potenza massima pari
a 19 per 3 minuti. Il mago può impartirgli ordini se vince un confronto
di TV con esso se è un essere errante, o con chi lo domina se è controllato..");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Sottomissione Demoni III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sottomissione Demoni III",401,6,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di sottomettere ai propri ordini un demone di potenza massima pari
a 30 per 3 minuti. Il mago può impartirgli ordini se vince un confronto
di TV con esso se è un essere errante, o con chi lo domina se è controllato..");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 30);

# -- Sparizione (Gusartan) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sparizione (Gusartan)",9,6,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Teletrasporta il target a 100 metri di distanza in un punto in cui il demonologo
è già stato. Il target deve pesare al massimo 90 kg ed avere non più
di 100 kg di equipaggiamento. Il target pu\'o subire danni a discrezione
del Master se il punto di destinazione \'e inagibileo gi\'a occupato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 100),(LAST_INSERT_ID(), 101, 100);

# -- Suggeritore (Wala) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Suggeritore (Wala)",509,6,1,"target",0,"N",NULL, 3,"concentrazione",NULL,0, "Il target resterà in contatto col demone suggeritore, facendo aumentare
di +1 la caratteristica CON, per il tempo in cui il mago terrà la concentrazione
più 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 12, 1);

# -- Tentacoli (Belfagor) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tentacoli (Belfagor)",310,6,1,"target",0,"N",NULL, 3,NULL,NULL,0, "L'usufruitore viene ricoperto da piccolissimi tentacoli che gli permettono di
dimezzare tutti i danni da botta, da punta e da taglio, compresi quelli prodotti
dagli incantesimi di Attacco/Danno Mirato, che gli vengono inflitti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Tentazione (Schax) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tentazione (Schax)",220,6,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Mostra alle vittime situate in un'area di 1 metro di raggio distante fino
a 1 metro dal mago immagini suadenti e ammaliatrici, che verranno percepite
anche con tatto, olfatto, udito. Un TOSS a difficoltà 20 renderà consapevoli
le vittime che le immagini non sono reali. In seguito, un TV a difficoltà
20 potrà farle scomparire.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 20);

# -- Tipografo (Pruslas) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tipografo (Pruslas)",505,6,1,"target",0,"N",NULL, NULL,"permanente","1d6 ore",0, "Produce 30 kg di fogli di carta in cui è stampato un breve messaggio o
un semplice disegno schematico. Le stampe vengono terminate in 1d6 ore e sono
permanenti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 5);

# -- Violinista (Shentsow) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Violinista (Shentsow)",104,6,2,"m",10,"N",NULL, NULL,NULL,NULL,0, "Pizzica i nervi delle vittime che si trovano in un'area di 2 metri di raggio
distante fino a 10 metri dal target come fossero corde di violino, causandone
lo stordimento (inabilitazione per il round in corso e quello successivo).");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Zanna di luce (Guang Ya) --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Zanna di luce (Guang Ya)",102,6,1,"target",7,"N",NULL, NULL,NULL,NULL,0, "Un demone dalla forma della testa di un serpente luminescente infligge 2d6 PV/PSC
di danno ad un target che si trova a massimo 7 metri dal mago. Il TPC è
pari a 12.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 12);


# -- Ali --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ali",3,5,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Fa nascere dalla schiena del target grandi ali di corvo che gli consentono
di volare ad una velocità massima pari a 4 volte la sua velocità in
corsa per 15 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 30),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 5, NULL);

# -- Armiere --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Armiere",1,5,1,"target",0,"N",NULL, 11,NULL,NULL,0, "Crea un'Arma da Taglio, da Botta o in Asta, 
composta da un solo pezzo di osso o legno, per 11 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 5),(LAST_INSERT_ID(), 3, 30);

# -- Artiglio della tigre --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Artiglio della tigre",4,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Trasforma la mano del target in un artiglio di tigre, capace di infliggere 4d6
PV/PSC di danno, più eventuali danni addizionali, se si colpisce il target.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 10),(LAST_INSERT_ID(), 7, 4);

# -- Aspide --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Aspide",103,5,1,"metri",1,"N",NULL, NULL,NULL,NULL,0, "Uccide istantaneamente per avvelenamento le vittime poste entro un metro di
distanza dal mago ed in un area di un metro di raggio, se queste non realizzano
un TR a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Assorbimento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Assorbimento",305,5,2,"metri",0,"N",NULL, 3,NULL,NULL,0, "Manifesta una barriera di petali di rosa che assorbe 3d6 PV di danno causato
da incantesimi di Attacco/Danno netto. I petali permangono per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 23, 3);

# -- Barriera Antimagia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Barriera Antimagia",301,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea attorno al Mago una barriera antimagia, che si manifesta come un intrico
di edere, e che ha una base Antimagia pari ai 25. La barriera dura per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 19, 25);

# -- Branchie --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Branchie",3,5,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 1),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 5, NULL);

# -- Camaleonte --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Camaleonte",5,5,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Cambia il colore di un target di 90 kg di peso massimo con 100 kg massimo di
carico rendendolo simile a quello dell'ambiente circostante, per la durata della
concentrazione, più ulteriori 3 minuti quando questa viene persa. Il target
potrà essere individuato realizzando un TOSS a difficoltà 16");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 2),(LAST_INSERT_ID(), 101, 100);

# -- Cambia Dimensioni --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cambia Dimensioni",14,5,1,"target",10,"N",NULL, 3,NULL,NULL,0, "Consente di aumentare o ridurre di 4 volte le dimensioni di un, un essere vivente
che pesi fino a 90 kg e fino a 300 kg di materia inerte (legno, osso o comunque
materiali facenti parte del dominio di stregoneria) se questo si trova entro
10 metri e non realizza un TR a difficoltà 24.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 5, 4),(LAST_INSERT_ID(), 101, 300);

# -- Capanna --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Capanna",1,5,1,"metri",1,"N",NULL, NULL,"permanente",NULL,0, "Crea una capanna di foglie e piante. La capanna è permanente.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 4),(LAST_INSERT_ID(), 3, 300);

# -- Carapace --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Carapace",302,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 6);

# -- Conoscenza --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Conoscenza",508,5,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Conferisce al target un bonus di +10 all'abilità Conoscere Animali Magici
per 7 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 10);

# -- Controllo Animali Magici I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Animali Magici I",401,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Animale Magico di potenza massima 7 per 3 minuti.
Perchè il controllo abbia luogo, il mago deve vincere un confronto di TV
con la creatura se questa è una creatura errante o realizzare un TV maggiore
del TV effettuato da colui che ne detiene il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27,  7);

# -- Controllo Animali Magici II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Animali Magici II",401,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Animale Magico di potenza massima 14 per 3 minuti.
Perchè il controllo abbia luogo, il mago deve vincere un confronto di TV
con la creatura se questa è una creatura errante o realizzare un TV maggiore
del TV effettuato da colui che ne detiene il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 14);

# -- Controllo Animali Magici III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Animali Magici III",401,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Animale Magico di potenza massima 21 per 3 minuti.
Perchè il controllo abbia luogo, il mago deve vincere un confronto di volontà
con la creatura se questa è una creatura errante o realizzare un TV maggiore
del TV effettuato da colui che ne detiene il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Controllo Liane --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Liane",6,5,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Permette di spostare una liana, una fune e simili pesante fino a 100 Kg alla
velocità di 10 km/h per 7 minuti. La fune ha FOR 2 perciò può
sopportare sforzi solo se assicurata a sostegni o se annodata.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 100);

# -- Cura animale --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cura animale",309,5,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Cura 3d6 PV/PSC di danno, lasciando però le tracce dell'avvenuta cura facendo
assumere le sembianze del corpo di un animale alle parti interessate dalla cura;
ad esempio, su una ferita può restare una cicatrice squamosa come la pelle
di un pesce, su un'ustione può crescere pelo, etc.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 3);

# -- Delfino --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Delfino",12,5,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Conferisce al target un bonus di +15 all'abilità Nuotare per 15 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 15);

# -- Dissimulazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dissimulazione",5,5,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Rende il target del peso massimo di 100 kg con 90 kg di carico massimo, totalmente
trasparente, e quindi quasi invisibile (individuabile con TOSS a difficoltà
25), per 7 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 100),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 101, 90);

# -- Fieno --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fieno",1,5,1,"target",10,"N",NULL, 3,NULL,NULL,0, "Crea una balla di fieno pesante 120 kg entro una distanza di 10 metri dallo
stregone. Il fieno scompare dopo 3 minuti");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 2),(LAST_INSERT_ID(), 3, 120);

# -- Fuga --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fuga",9,5,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Teletrasporta 1 target di massimo 90 kg con 100 kg massimo di equipaggiamento
a 100 mt di distanza. Al posto del target appatirà una nube di polline.
Il target può subire danni a discrezione del MAster.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 100),(LAST_INSERT_ID(), 101, 100);

# -- Fulmine --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fulmine",101,5,2,"m",10,"Y",3, NULL,NULL,NULL,0, "Un fulmine che parte dal mago infligge 4d6 PV (più eventuali Danni Addizionali
da ustione) di danno netto su un'area di 2 metro di raggio, investendo anche
tutti coloro che si trovano nella traiettoria. Il fulmine potrà percorrere
un massimo di 10 metri. Se il fulmine sbatte contro oggetti solidi come muri
o rocce, rimbalza a specchio per un massimo di tre volte
e prosegue la sua corsa. E' necessario effettuare un tiro Calcolare per valutare
la traiettoria dei fulmine dopo il rimbalzo. A seconda del rimbalzo oggetti
e esseri potranno essere colpiti più volte, subendo più volte il danno.
Gli esseri colpiti potranno dimezzare il danno realizzando un TR a difficoltà
18.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 4);

# -- Furto del corpo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Furto del corpo",202,5,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Lo stregone si impossessa per 3 minuti del corpo di 1 target che si trova a
meno di 4 metri di distanza, se questo non realizza un TV a difficoltà
20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Guscio chitinoso --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guscio chitinoso",302,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "L'incantesimo riveste il target di un guscio chitinoso simile a quello dei coleotteri
conferendogli 3 PP da danni fisici o magici da Attacco/ Danno Mirato per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 3);

# -- Istrice --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Istrice",102,5,1,"target",7,"N",NULL, NULL,NULL,NULL,0, "Fa partire dal mago una spina acuminata capace di infliggere 2d6 PV/PSC di danno
mirato ad un target distante fino a 7 metri. La base TPC è pari a 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 20);

# -- Malia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Malia",201,5,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Un target che dista al massimo 4 metri dallo stregone e che non realizza un
TV a difficoltà 20 si innamorerà all'istante di un essere a scelta
del mago. Il TV potrà essere penalizzato o favorito a seconda di precedenti
affinità tra il target e l'essere scelto, a discrezione del Master. L'innamoramento
durerà 3 minuti, dopodichè... chissà?");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Mantide  --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Mantide ",4,5,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Crea delle escrescenze chitinose sugli avambracci del target, capaci di infliggere
3d6 PSC/PV di danno da taglio oltre al danno infliggibile con CAC. Le escrescenze
permangono per 3 minuti e vanno utilizzate con CAC.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 10),(LAST_INSERT_ID(), 7, 3);

# -- Medusa --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Medusa",102,5,1,"target",7,"N",NULL, NULL,NULL,NULL,0, "Fa partire un filamento urticante capace di infliggere su un target posto ad
una distanza massima di 7 metri un danno pari a 2d6 PV/PSC più danni addizionali
da ustione. La base TPC è pari a 10. Danni addizionali: da ustione");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 10);

# -- Occhio di falco --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Occhio di falco",12,5,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Conferisce all'occhio del target la precisione dell'occhio di un uccello rapace,
conferendogli +15 all'abilità ADT per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 15);

# -- Parlare agli animali --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Parlare agli animali",502,5,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di dialogare con un animale distante fino a 4 metri dallo stregone
per 3 minuti. l'animale risponderà arbitrariamente realizzando un TV a
difficoltà 10 per ogni domanda. Fallendolo, risponderà sinceramente.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 10);

# -- Parlare alle piante --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Parlare alle piante",504,5,2,"d6 target",0,"N",NULL, NULL,NULL,NULL,0, "Consente di effettuare 2d6 domande alle piante. Le piante risponderanno in base
alla loro esperienza degli ultimi 10 anni,comunicando con lo stregone attraverso
il profumo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, NULL),(LAST_INSERT_ID(), 31, 10);

# -- Protezione Animali Magici I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Animali Magici I",403,5,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio all'interno della
quale gli Animali Magici di potenza inferiore o uguale a 7 non possono entrare
se non realizzando un TV a difficoltà 17. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali ci si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 7);

# -- Protezione Animali Magici II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Animali Magici II",403,5,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio all'interno della
quale gli Animali Magici di potenza inferiore o pari a 17 non possono entrare
se non realizzando un TV a difficoltà 27. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali ci si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 17);

# -- Protezione Animali Magici III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Animali Magici III",403,5,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago un'area di 3 metri di raggio all'interno della
quale gli Animali Magici di potenza inferiore o uguale a 21 non possono entrare
se non realizzando un TV a difficoltà 31. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali ci si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Rampicante --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Rampicante",8,5,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Fa spuntare da terra una pianta capace di crescere istantaneamente che con i
suoi viticci solleva massimo 120 kg di massa vivente e 300 kg di massa inerte
alla velocità di 10 km/h. La pianta si origina da un punto distante fino
ad un metro dal mago e potrà sollevare oggetti in un'area di 1 metro
di raggio. Dopo 3 minuti la pianta scompare istantaneamente riducendosi in polvere.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 120),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 300);

# -- Richiama Animali Magici I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Richiama Animali Magici I",402,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Richiama un Erkythow o un Animale Magico di potenza inferiore, consentendo al
mago di impartirgli ordini per 3 minuti se vince un confronto di TV.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 7);

# -- Richiama Animali Magici II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Richiama Animali Magici II",402,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Richiama un Drago Cucciolo o un Animale Magico di potenza inferiore, consentendo
al mago di impartirgli ordini per 3 minuti se vince un confronto di TV.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 17);

# -- Richiama Animali Magici III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Richiama Animali Magici III",402,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Richiama un'amhunta o un Animale Magico di potenza inferiore, consentendo
al mago di impartirgli ordini per 3 minuti se vince un confronto di TV.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Riflessi felini --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Riflessi felini",13,5,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Aumenta i riflessi e l'agilità del target conferndogli un bonus di +3 all'aGI
per 7 minuti");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 12, 3);

# -- Rospo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Rospo",3,5,1,"target",4,"N",NULL, NULL,"permanente","1d4 settimane",0, "Trasforma permanentemente un target umanoide distante fino a 4 metri in un grosso
rospo se questi non realizza un TR a difficoltà 31. Il target potrà
tornare normale in seguito ad un evento qualunque deciso dal mago (ad es. il
bacio di una principessa). La trasformazione avviene gradualmente
in 1d4 settimane.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 15),(LAST_INSERT_ID(), 5, 4);

# -- Salice --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Salice",103,5,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Uccide un target che si trova alla distanza massima di 4 metri dallo stregone,.
trasformandolo in un grande Salice Piangente, se il target non realizza un TR
a difficoltà 20. Le vittime possono essere riportate in vita con un incantesimo
di Resurrezione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Scossa Tellurica --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Scossa Tellurica",101,5,15,"m",0,"N",NULL, NULL,NULL,NULL,1, "Provoca una scossa tellurica con epicentro il mago, che provoca 6d6 (più
eventuali danni addizionali da Fratture) di danno a tutti coloro che si trovano
in un'area di 15 metri di raggio. Il Mago non subisce alcun danno. Le vittime
possono dimezzare i danni realizzando un TR a difficoltà 23. Danni addizionali: da Frattura.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Sfera di cristallo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera di cristallo",503,5,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Prevede correttamente gli eventi che accadranno ad una persona o ad un oggetto
che sta ad 1 metro dal mago nelle 24 ore successive. La conoscenza degli eventi
può cambiarne il corso.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 29, 10),(LAST_INSERT_ID(), 30, 24);

# -- Spine --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Spine",101,5,3,"m",10,"N",NULL, NULL,NULL,NULL,0, "Crea delle spine che si ergono verticalmente in un'area di 3 metri di raggio
posta entro 10 metri dallo Stregone e capaci di infliggere 7d6 PV di danno a
tutti gli esseri presenti nell'area. Le spine secernono un acido urticante (Danno
Addizionale da Ustione). I danni diretti possono essere dimezzati dalle vittime
realizzando un TR a difficoltà 24.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 7);

# -- Spugna --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Spugna",310,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Tuttàttorno al corpo del target si forma un rivestimento spugnoso che attutisce
i colpi dividendo per 2 i danni fisici e magici da Attacco/Danno mirato subiti.
L'incantesimo dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Squalo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Squalo",4,5,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Ricopre un'arma da taglio o da botta di file di denti triangolari simili
a quelli dello squalo. Il danno dell'arma aumenta di 2d6.La trasformazione dell'arma
dura per 3 minuti. L'incantesimo funziona a contatto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 10),(LAST_INSERT_ID(), 7, 2);

# -- Tempesta di fulmini --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tempesta di fulmini",101,5,4,"m",10,"N",NULL, NULL,NULL,NULL,0, "Una scarica di fulmini che viene dall'alto infligge 6d6 PV di danno netto su
un'area di 3 metri di raggio distante fino a 10 metri dal mago. I targets
possono dimezzare i danni realizzando un TR a difficoltà 22. L'incantesimo
infligge danni addizionali ustione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Torpedine --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Torpedine",102,5,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Infligge al tocco una scarica elettrica che provoca 3d6 PV/PSC di danno più
eventuali danni addizionali da ustione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 3),(LAST_INSERT_ID(), 14, NULL);

# -- Ululato --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ululato",216,5,2,"m",10,"N",NULL, 3,NULL,NULL,0, "L'incantesimo farà udire un ululato a tutti coloro che si trovano in un'area
di 2 metri di raggio posta, al momento dell'attivazione, a 10 metri o meno dallo
stregone. La riuscita di un TOSS a difficoltà 20 farà capire alle
vittime che si è trattato solo di un'illusione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 20);

# -- Zampe di mosca --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Zampe di mosca",3,5,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Trasforma gli arti del target in zampe di mosca, rendendolo capace di arrampicarsi
praticamente su qualunque superficie, o addirittura di restare appeso a volte
o soffitti, come le mosche. L'incantesimo dura fino a 15 minuti ed agisce a
contatto");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 8),(LAST_INSERT_ID(), 5, NULL);

insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Barriera psichica I",301,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Difende il target da tutti gli incantesimi a lui diretti nel tempo di 3 minuti,
con una Base Antimagia di 10.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 19, 10);

# -- Barriera psichica II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Barriera psichica II",301,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Difende il target da tutti gli incantesimi nel tempo di 3 minuti, con una Base
Antimagia di 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 19, 20);

# -- Buio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Buio",215,3,4,"m",4,"N",NULL, 3,NULL,NULL,0, "Illude i target che si trovano in un'area di 4 metri di raggio sita fino
a 4 metri dal mago che la luce sia scomparsa. I target che realizzeranno un
TOSS a difficoltà 20 si renderanno conto che il buio è un'illusione
e potranno far tornare la \char`\"{}luce\char`\"{} realizzando un TV a difficoltà
20. Il buio dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 20);

# -- Cecità --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cecità",215,3,1,"target",4,"N",NULL, NULL,"permanente",NULL,0, "Provoca la cecità in 1 target posto ad una distanza massima di 4 metri
illudendolo di essere perennemente al buio. Se il target realizza un TOSS a
difficoltà 25 si accorgerà che la cecità è un'illusione
e potrà riprendere la vista realizzando un TV a difficoltà 25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 25);

# -- Concretizzazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Concretizzazione",2,3,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Crea un essere vivente con massimo 30 Punti CAT richiamando dalla dimora onirica
una raffigurazione di un essere vivente.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 4, 30);

# -- Concretizzazione oggetti --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Concretizzazione oggetti",1,3,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Crea un oggetto richiamando dalla dimora onirica una raffigurazione non vivente
di un oggetto di massimo 30 kg di peso, di complessità massima 8. L'oggetto
sparisce dopo 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 8),(LAST_INSERT_ID(), 3, 30);

# -- Controllo Creatura Onirica I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Creatura Onirica I",401,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di una creatura onirica di potenza
massima 6, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè
il controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura
se questa è una creatura errante, o realizzare un TV maggiore del TV effettuato
da colui che ne ha il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Controllo Creatura Onirica II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Creatura Onirica II",401,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di una creatura onirica di potenza
massima 15, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè
il controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura
se questa è una creatura errante o realizzare un TV maggiore del TV effettuato
da colui che ne ha già il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Controllo Creatura Onirica III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Creatura Onirica III",401,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di una creatura onirica di potenza
massima 23, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè
il controllo abbia luogo, il mago deve vincere un Confronto di TV con la creatura
se questa è una creatura errante o realizzare un TV maggiore del TV effettuato
da colui che ha il controllo della creatura stessa.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Dolore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dolore",101,3,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Provoca una contrazione involontaria brusca della muscolatura del target causando
una dolorosa fitta che provoca 3d6 PV di danno. Il danno può essere dimezzato
realizzando un TR a difficoltà 16.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 3);

# -- Evoca Essere Onirico I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Essere Onirico I",402,3,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il mago richiama dalla dimora onirica un Braak, un Blink o un Greyant e gli
impartisce comandi, che la creatura onirica esegue al meglio delle sue possibilità,
a patto che il mago vinca un confronto di TV con l'essere evocato. Perchè
il richiamo riesca ci deve essere un adulto che dorme nel raggio di 1000 metri.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Evoca Essere Onirico II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Essere Onirico II",402,3,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il mago richiama dalla dimora onirica un Bleargh, un Succube, un Tolden, un
Moae o un Kartenius (o una creatura onirica di potenza inferiore) e gli impartisce
comandi, che la creatura esegue al meglio delle sue possibilità, a patto
che il mago vinca un confronto di TV con l'essere evocato. Perchè il richiamo
riesca ci deve essere un anziano che dorme nel raggio di 1000 metri.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Evoca Essere Onirico III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Essere Onirico III",402,3,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il mago richiama dalla dimora onirica un Krull o un Benair (o una creatura onirica
di potenza inferiore) e gli impartisce comandi, che la creatura esegue al meglio
delle sue possibilità, a patto che il mago vinca un confronto di TV con
l'essere evocato. Perchè il richiamo riesca ci deve essere un adolescente
che dorme nel raggio di 1000 metri.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Fetore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fetore",12,3,4,"m",0,"N",NULL, 3,NULL,NULL,0, "Convince i target di sentire un odore pessimo, come di uova marce ammuffite.
Il risultato è un malus di -3 all'abilità Fiutare per 3 minuti. I
target possono sottrarsi agli effetti dell'incantesimo realizzando un TR a difficoltà
13.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 3);


# -- Fitta --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fitta",101,3,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Provoca una brusca contrazione involontaria della muscolatura del target causando
una dolorosa fitta che provoca 1d6 PV di danno. Il danno può essere dimezzato
realizzando un TR a difficoltà 12.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 1);

# -- Follia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Follia",203,3,1,"target",4,"N",NULL, NULL,"permanente",NULL,2, "Toglie 10 Punti Psiche ad un target che non realizza un TV a difficoltà
22. La perdita potrà essere curata anche con l'abilità Medicina.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 10);

# -- Ilarità --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ilarità",13,3,1,"m",0,"N",NULL, NULL,NULL,NULL,-1, "Suscita una sensazione di ilarità nei target che non realizzano un TV a
difficoltà 15 causando un malus di -1 alla CONC per 3 minuti a causa del
gran ridere.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 12, 1);

# -- Ipnosi I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ipnosi I",201,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Fa compiere al target che non realizza un TV a difficoltà 20 un un gesto
qualsiasi, anche prolungato, fino a 3 minuti. Il target deve distare 4 metri
o meno dal mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Ipnosi II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ipnosi II",201,3,3,"m",4,"N",NULL, 3,NULL,NULL,0, "Fa compiere ai target situati all'interno di un'area di 3 metri di raggio,
che non realizzano un TV a difficoltà 25 un un gesto qualsiasi, anche prolungato,
fino a 3 minuti. Il centro dell'area deve distare 4 metri o meno dal mago. Il
gesto è lo stesso per tutti i target.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 25);

# -- Ipnosi III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ipnosi III",201,3,6,"m",11,"N",NULL, 3,NULL,NULL,0, "Fa compiere ai target situati all'interno di un'area di 6 metri di raggio,
che non realizzano un TV a difficoltà 30 un un gesto qualsiasi, anche prolungato,
fino a 3 minuti. Il centro dell'area deve distare 11 metri o meno dal mago. Il
gesto è lo stesso per tutti i target.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 30);

# -- Istigazione al suicidio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Istigazione al suicidio",103,3,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Il target che non realizza un TV a difficoltà 20 si toglierà la vita
il prima possibile. L' incantesimo agisce su un target che si trova a 1 metro
o meno dal mago. Per impedire al target di suicidarsi è necessario effettuare 
un controincantesimo a DA 35.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 15);

# -- Lettura del pensiero --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Lettura del pensiero",504,3,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Legge il \"pensiero superficiale\" (cioè quello corrente)
dalla mente di un target, posto fino a 4 metri di distanza dal mago. Il target
può evitare l'incantesimo realizzando un TV a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20),(LAST_INSERT_ID(), 31, NULL);

# -- Luci colorate --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Luci colorate",205,3,4,"m",0,"N",NULL, 3,NULL,NULL,0, "Genera un effetto luminoso colorato nell'area di 4 metri a scelta del mago visibile
da tutti. L'effetto è evidentemente illusorio, e chiunque lo desideri (il
TV riesce automaticamente) potrà far scomparire l'effetto dalla sua vista.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 1);

# -- Lussuria --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Lussuria",201,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Risveglia un'irresistibile frenesia nel target che non realizza un TV a difficoltà
25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 25);

# -- Panico --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Panico",203,3,10,"m",0,"N",NULL, 7,NULL,NULL,0, "Causa una sensazione di terrore nei target situati all'interno di un'area
di 10 metri di raggio attorno all'usufruitore, tale da far impazzire per 7 minuti
(-20 alla Psiche) i target che non realizzano un TV a difficoltà 30.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 20);

# -- Paralisi I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Paralisi I",201,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Impone ai target che non realizzano un TV a difficoltà 15 di restare completamente
immobili per 3 minuti. I target potranno riprendere a muoversi se attaccati
realizzando un TV a difficoltà 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 15);

# -- Paralisi II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Paralisi II",201,3,3,"m",7,"N",NULL, 3,NULL,NULL,0, "Impone a tutti gli esseri in un'area di 3 metri di raggio con centro entro
7 metri dal mago, che non realizzano un TV a difficoltà 25 di restare completamente
immobili per 3 minuti. I target potranno riprendere a muoversi se attaccati
realizzando un TV a difficoltà 25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 25);

# -- Paura --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Paura",203,3,1,"d6 target",7,"N",NULL, 3,NULL,NULL,0, "Infonde in 1d6 di target una sensazione di paura generalizzata che comporta
un malus di -10 alla Psiche per 3 minuti, se i target non realizzano un TV a
difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 10);

# -- Pazzia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Pazzia",203,3,1,"target",0,"N",NULL, NULL,"permanente",NULL,0, "Rende pazzo un target che viene toccato dal mago, sottraendogli permanentemente
15 punti Psiche se non realizza un TV a difficoltà 25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 15);

insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Psicosi",203,3,1,"target",1,"N",NULL, NULL,"permanente",NULL,0, "Induce in un target che non realizza un TV a difficoltà 20 una psicosi che comporta la perdita permanente di 10 punti Psiche. La psicosi può essere curata con l'abilità Medicina.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 10);

# -- Protezione Incubi I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Incubi I",403,3,3,"m",0,"N",NULL, 3,NULL,NULL,4, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale le creature oniriche di potenza inferiore o uguale a 6 non possono entrare
se non realizzando un TV a difficoltà 20. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Protezione Incubi II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Incubi II",403,3,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale le creature oniriche di potenza inferiore o uguale a 15 non possono entrare
se non realizzando un TV a difficoltà 25. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Protezione Incubi III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Incubi III",403,3,3,"m",0,"N",NULL, 3,NULL,NULL,-3, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale le creature oniriche di potenza inferiore o pari a 23 non possono entrare
se non realizzando un TV a difficoltà 30. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Psicosi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Psicosi",203,3,1,"target",1,"N",NULL, NULL,"permanente",NULL,0, "Induce in un target che non realizza un TV a difficoltà 20 una psicosi
che comporta la perdita permanente di 10 punti Psiche. La psicosi può essere
curata con l'abilità Medicina.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 10);

# -- Quadruplicazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Quadruplicazione",205,3,6,"m",10,"N",NULL, 7,NULL,NULL,0, "Vengono create tre immagini illusorie esattamente uguali al mago, che si possono
muovere all'interno di un'area di 6 metri di raggio distante fino a 10 metri
dal mago stesso. Realizzando un TOSS a difficoltà 25 ci si accorgerà
del miraggio, e lo si potrà far scomparire dalla propria vista realizzando
un TV a 25. Il miraggio permane per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 25);

# -- Realtà virtuale --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Realtà virtuale",103,3,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Proietta la mente del target in un mondo onirico virtuale a scelta del mago,
causandone di fatto la morte (coma irreversibile) se questi non realizza un
TV a difficoltà 20. L'incantesimo è permanente ma reversibile (dal
mondo onirico virtuale si può ritornare effettuando lo stesso incantesimo
sul corpo). L'uccisione del corpo inerte provoca la morte definitiva del target,
dalla quale si può resuscitare normalmente.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Scomparsa totale --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Scomparsa totale",220,3,10,"m",0,"N",NULL, 3,NULL,NULL,0, "Il target non viene visto, udito nè percepito con nessuno dei sensi da
nessun essere che sta ad una distanza inferiore a 10 metri. La presenza del
mago può essere percepita con un TOSS a difficoltà 30. Un successivo
TV a difficoltà 30 renderà visibile il mago agli occhi di chi lo realizza.
L'incantesimo può essere lanciato sul mago stesso o su un target a contatto.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 30);

# -- Scudo Psichico --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Scudo Psichico",310,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Genera attorno al target uno scudo di energia psichica attivo per 3 minuti che
divide per 5 tutti i danni da punta, taglio e botta e da Attacco/Danno mirato.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 5);

# -- Sdoppiamento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sdoppiamento",220,3,10,"m",0,"N",NULL, 3,NULL,NULL,0, "Qualunque essere situato a meno di 10 metri dal mago, vedrà una immagine
illusoria, perfettamente identica anche al tatto, all'olfatto e all'udito, del
mago, a meno che il target non realizzi un TOSS a difficoltà 30, a cui
potrà far seguito un TV di pari difficoltà per dissolvere l'illusione.
L'immagine permane per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 30);

# -- Sfera sonica --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera sonica",101,3,3,"m",4,"N",NULL, NULL,NULL,NULL,0, "Trasmette telepaticamente un suono acutissimo che causa convulsioni ai target
situati all'interno di un'area di 3 metri di raggio con centro situato a
4 metri o meno dal mago. Le convulsioni causano 3d6 PV di danno, dimezzabili
con un TV a difficoltà 16.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 3);

# -- Sonno I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sonno I",201,3,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Addormenta un target fino a 4 metri di distanza per 3 minuti. Al termine dei
3 minuti il target continuerà a dormire per 1d8 ore se non viene svegliato.
Il target può sottrarsi all'incantesimo realizzando un TV a difficoltà
15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 15);

# -- Sonno II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sonno II",201,3,1,"target",10,"N",NULL, 3,NULL,NULL,0, "Addormenta un target fino a 10 metri di distanza per 3 minuti. Al termine dei
3 minuti il target continuerà a dormire per 1d8 ore se non viene svegliato.
Il target può sottrarsi all'incantesimo realizzando un TV a difficoltà
20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Sonno profondo  --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sonno profondo ",201,3,1,"target",4,"N",NULL, NULL,"permanente",NULL,0, "Addormenta permanentemente un target fino a 4 metri di distanza che non realizza
un TV a difficoltà 20. L'incantesimo può essere sciolto automaticamente
dopo un certo evento o dopo un tempo a scelta del mago (es. dopo 100 anni o
al bacio di un principe azzurro...)");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Stordimento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Stordimento",104,3,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Causa l'inabilitazione di un target per stordimento per il round in corso e
per quello successivo. Il target deve trovarsi a 4 metri o meno dal mago. L'incantesimo
non ha effetto se il target realizza un TR a difficoltà 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 15);

# -- Telecinesi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Telecinesi",6,3,2,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di spostare per 3 minuti fino a 2 oggetti (ciascuno di 100 kg di massa
non vivente e 90 kg di massa vivente) che si trovano inizialmente ad una distanza
massima di 4 metri dal mago, ad una velocità massima di 60 km/h. Esseri
viventi si possono opporre all'incantesimo realizzando un TV a difficoltà
20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 9, 60),(LAST_INSERT_ID(), 101, 100);

# -- Telepatia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Telepatia",507,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Consente al target una comunicazione telepatica nei due sensi, sotto forma di
\char`\"{}parole\char`\"{} con un essere che si trova a meno di 100 metri dal
target. E' necessario che il target e l'essere con cui comunica parlino la stessa
lingua, per capirsi. Il target è colui che inizia la comunicazione, e deve
trovarsi a contatto con il mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 6),(LAST_INSERT_ID(), 32, 100);

# -- Tempesta di frecce --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tempesta di frecce",101,3,1,"m",4,"N",NULL, NULL,NULL,NULL,0, "Fa credere agli esseri all'interno di un'area di 1 metro di raggio di essere
vittima di una tempesta di frecce acuminate, causando 6d6 PV di danno. I danni
si manifesteranno realmente. Realizzando un TR a difficoltà 22 il danno
potrà essere dimezzato.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Velo d'ombra --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Velo d'ombra",215,3,14,"m",0,"N",NULL, 3,"concentrazione",NULL,0, "Rende il mago totalmente simile ad un'ombra, rendendogli possibile nascondersi
totalmente al buio, agli occhi di coloro che si trovano a meno di 14 metri da
lui. L'incantesimo perdura per tutto il tempo durante il quale il mago focalizza
la sua concentrazione sull'incantesimo. Al momento della perdita di concentrazione
l'effetto di invisibiltà prosegue per 3 minuti. Un TOSS a difficoltà
25 farà intuire ai target la presenza del mago e un successivo TV alla
stessa difficoltà renderà visibile il mago agli occhi di chi lo realizza.
Il TOSS potrà essere ripetuto ogni volta che il mago viene individuato
attraverso rumori, odori o sensazioni tattili.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 25);

# -- Viaggio onirico --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Viaggio onirico",9,3,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Teletrasporta istantaneamente attraverso la Dimora Onirica il target (90 kg
+ 100 kg di equipaggiamento) ad una distanza massima di 10 km in un punto in
cui il target abbia dormito per almeno 1 ora
Il target potrebbe subire danni all'arrivo a discrezione del Master.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 10000),(LAST_INSERT_ID(), 101, 100);

# -- Volontà --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Volontà",204,3,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Attribuisce ad un target un bonus di +2 alla VOLontà per 3 minuti, purché
questi sia a contatto col mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 12, 2);

# -- Anime Protettrici --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Anime Protettrici",305,2,1,"m",0,"N",NULL, 3,NULL,NULL,0, "Crea un vortice di Essenze attorno al Target, che assorbono 3d6 PV di danno
prodotto dagli incantesimi di Attacco/Danno Netto. Il vortice ha effetto per
3 minuti attorno un area di un metro di raggio avente come centro il Target.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 23, 3);

# -- Asservimento Esseri del Limbo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Esseri del Limbo I",401,2,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di un Essere del Limbo di potenza massima
6, situato a massimo 4 metri di distanza dal mago, per 3 minuti. Perché il controllo
abbia luogo, il mago deve vincere un confronto di TV con la creatura se questa
è una creatura errante oppure realizzare un TV maggiore del TV effettuato
da colui che ne detine il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Asservimento Esseri del Limbo II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Esseri del Limbo II",401,2,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di un Essere del Limbo di potenza massima
15, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè
il controllo abbia luogo, il mago deve vincere un confronto di TV con la creatura
se questa è una creatura errante oppure realizzare un TV maggiore del TV
effettuato da colui che ne detiene il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Asservimento Esseri del Limbo III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Esseri del Limbo III",401,2,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare il comportamento di un Essere del Limbo di potenza massima
21, situata a massimo 4 metri di distanza dal mago, per 3 minuti. Perchè
il controllo abbia luogo, il mago deve vincere un confronto di TV con la creatura
se questa è una creatura errante oppure realizzare un TV maggiore del TV
effettuato da colui che ne detiene il controllo.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Becchino --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Becchino",6,2,1,"m",3,"N",NULL, NULL,NULL,NULL,0, "Scava una fossa di circa 2 metri cubi (300 kg di terra) di forma qualsiasi su
una superfice non compatta (terra, sabbia ecc.).");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 400);

# -- Catalessi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Catalessi",201,2,2,"m",10,"N",NULL, 3,NULL,NULL,0, "Infonde negli esseri presenti in unàrea di 2 metri di raggio posta entro
10 metri dal necromante un sonno profondissimo che dura 3 minuti. Dopo questo
tempo, se il target non viene svegliato, continua a dormire per 2d6 ore. Il
target può evitare gli effetti dell'incantesimo realizzando un TV a difficoltà
20.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Decomposizione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Decomposizione",101,2,3,"m",10,"N",NULL, NULL,NULL,NULL,0, "Provoca un rapido processo di decomposizione che infligge 6d6 PV di danno (più
eventuali danni addizionali da emorragia) a tutti gli esseri che si trovano
in unàrea di 3 m di raggio distante fino a 10 m dal necromante. Si possono
dimezzare i danni realizzando un TR a difficoltà 23.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 6);

# -- Denti del Vampiro --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Denti del Vampiro",4,2,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Trasforma per 3 minuti i canini del Target in Denti da Vampiro che infliggono
2d6 PV/PSC di Danno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 1),(LAST_INSERT_ID(), 7, 2);

# -- Dismissione I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dismissione I",103,2,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà
25 e che si trova ad una distanza massima di un 1 metro dal Necromante.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 25);

# -- Dismissione II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dismissione II",103,2,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà
30, se questa si trova ad una distanza massima di un 1 metro dal Necromante.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 30);

# -- Dismissione III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dismissione III",103,2,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Provoca la distruzione di una creatura del limbo che non realizza un TR a difficoltà
35. La creatura deve trovarsi al massimo ad 1 metro di distanza dal Necromante.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 35);

# -- Dito I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dito I",102,2,1,"target",4,"N",NULL, NULL,NULL,NULL,0, "Crea un dito scheletrico acuminato in grado di colpire un bersaglio sino a 4
metri di distanza dal necromante con una base TPC di 15, che infligge 1d6 PV/PSC
di danno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 1),(LAST_INSERT_ID(), 14, 15);

# -- Dito II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dito II",102,2,1,"target",10,"N",NULL, NULL,NULL,NULL,0, "Crea un dito scheletrico acuminato in grado di colpire un bersaglio sino a 10
metri di distanza dal necromante con una base TPC di 15, che infligge 2d6 PV/PSC
di danno.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 15);

# -- Dito III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Dito III",102,2,2,"m",10,"N",NULL, NULL,NULL,NULL,0, "Infligge agli esseri posti entro unàrea di 2 metri di raggio distante fino
a 10 metri dal necromante 2d6 PV di danno (più eventuali danni addizionali
da gelo). La base TPC è 20. L'incantesimo colpisce separatamente ogni target
in un punto del corpo a caso (Fantoccio).");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, 20);

# -- Esoscheletro --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Esoscheletro",302,2,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea attorno al target unàrmatura composta da ossa che offre una protezione
pari a 3 PP per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 3);

# -- Etereità --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Etereità",5,2,1,"target",0,"N",NULL, 11,NULL,NULL,0, "Modifica la consistenza del target (fino a 90 kg di peso) e del suo equipaggiamento
(fino a 100 kg di peso) rendendolo etereo, intangibile, traslucido, come i fantasmi.
Il target può spostarsi nelle tre dimensioni come se nuotasse e passare
attraverso stretti pertugi. Il target non può nè attaccare nè
pronunciare incantesimi ma è immune agli attacchi fisici.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 101, 100);

# -- Evoca/Crea Esseri del Limbo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca/Crea Esseri del Limbo I",402,2,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il Mago crea uno Zombo o uno Scheletro o richiama un Poltergeist o uno Spettro
, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca
un Confronto di TV con l'Essere. Se questi vince il TV resta svincolato da qualsiasi
comando e non è più legato all'evocatore. Alla fine della durata,
se l'Essere richiamato non viene rimandato nel limbo, è libero di agire
di sua volontà. L'Essere Creato alla fine della durata è libero di
scegliere se rimanere alle dipendenze del suo creatore o meno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Evoca/Crea Esseri del Limbo II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca/Crea Esseri del Limbo II",402,2,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il Mago crea una Mummia o richiama unànima, uno Spirito o un Viaggiatore
, che sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca
un confronto di TV con l'Essere. Se questi vince il TV non è più legato
all'evocatore. Alla fine della durata, se l'Essere richiamato non viene rimandato
nel limbo, è libero di agire di sua volontà. L'Essere Creato alla
fine della durata è libero di scegliere se rimanere alle dipendenze del
suo creatore o meno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Evoca/Crea Esseri del Limbo III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca/Crea Esseri del Limbo III",402,2,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Il Mago crea un Angelo Nero o richiama una Banshee, un Boia o un Messo , che
sono ai suoi comandi per la durata di 3 minuti, a patto che il mago vinca un
confronto di TV con l'Essere. Se questi vince il TV è svincolato da qualsiasi
comando e non è più legato all'evocatore. Alla fine della durata,
se l'Essere richiamato non viene rimandato nel limbo, è libero di agire
di sua volontà. L'Essere Creato alla fine della durata è libero di
scegliere se rimanere alle dipendenze del suo creatore o meno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Fuoco fatuo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Fuoco fatuo",5,2,1,"target",0,"N",NULL, 11,NULL,NULL,0, "Fa risplendere al tocco un target non vivente pesante fino a 100 kg di una luce
spettrale azzurrognola capace di illuminare come una lanterna. La luce permane
per 11 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 2, 3),(LAST_INSERT_ID(), 101, 100);

# -- Gelo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Gelo I",101,2,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Infligge ad un target, posto ad una distanza massima di un metro, 5d6 PV di
danno (più eventuali danni addizionali da ustione). Il target può
dimezzare i danni realizzando un TR a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 5);

# -- Gelo II  --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Gelo II",101,2,4,"m",10,"N",NULL, NULL,NULL,NULL,0, "Infligge agli esseri posti all'interno unàrea di 4 metri di raggio distante
fino a 10 metri dal necromante 5d6 PV di danno (più eventuali danni addizionali
da ustione). Il target può dimezzare i danni realizzando un TR a difficoltà
20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 5);

# -- Illusione di morte --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Illusione di morte",219,2,1,"target",0,"N",NULL, 3,NULL,"1d4 settimane",0, "Fa vedere e udire al target un totale di 3 minuti di brevi scene raccapriccianti
nel corso di 1d4 settimane. A discrezione del master, dipendentemente dall'indole
del target, queste visioni potranno provocare perdita di punti Psiche. Il target
può sottrarsi all'incantesimo, al momento del lancio, realizzando un TV
a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 20);

# -- Invecchiamento --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Invecchiamento",103,2,1,"target",0,"N",NULL, NULL,NULL,"1d6 giorni",0, "Accelera il processo di invecchiamento portando il target alla morte per vecchiaia
in 1d6 giorni. Il target può evitare gli effetti dell'incantesimo realizzando
un TR a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Malattia I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Malattia I",103,2,1,"m",1,"N",NULL, 3,NULL,"oltre 1 mese",0, "Infligge una malattia mortale (a discrezione del necromante) a tutti gli esseri
situati entro un metro di raggio fino ad un metro di distanza dal necromante
. Qualunque sia la malattia scelta, avrà un decorso superiore a 30 giorni
e le vittime potranno evitare gli effetti dell'incantesimo realizzando un TR
a difficoltà 20.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Malattia II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Malattia II",103,2,1,"m",1,"N",NULL, 3,NULL,"oltre 1 mese",0, "
Infligge una malattia mortale (a discrezione del necromante) a tutti gli esseri
situati entro un metro di raggio fino ad un metro di distanza dal necromante
. Qualunque sia la malattia scelta, avrà un decorso superiore a 30 giorni
e le vittime potranno evitare gli effetti dell'incantesimo realizzando un TR
a difficoltà 25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 25);

# -- Morte I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Morte I",103,2,1,"m",1,"N",NULL, NULL,NULL,NULL,0, "Provoca la morte di un target a contatto con il Necromante qualora il target
stesso non realizzi un TR a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Morte II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Morte II",103,2,1,"target",10,"N",NULL, NULL,NULL,NULL,0, "Provoca la morte di un target a contatto con il Necromante qualora il target
stesso non realizzi un TR a difficoltà 25.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 25);

# -- Ombra --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ombra",5,2,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Cambia la colorazione della superficie di un target di massimo 90 kg di peso
e del suo equipaggiamento fino a 100 kg rendendolo completamente nero e privo
di riflessi, quindi indistinguibile dalle ombre. Per individuare il target cos\`{\i}
nascosto nell'ombra occorre realizzare un TOSS a difficoltà 16.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 2, 2),(LAST_INSERT_ID(), 101, 100);

# -- Onda Mortale --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Onda Mortale",101,2,10,"m",19,"Y",NULL, 3,NULL,NULL,0, "Crea un'onda di anime urlanti lungo una traiettoria cilindrica che strazia tutte
le vittime presenti lungo la gittata e in unàrea di 10 metri di raggio,
distante dal Necromante massimo 19 metri, infliggendo 10d6 PV di danno più
eventuali danni addizionali da ustione. La vittima può dimezzare i danni
realizzando un TR a difficoltà 30.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 10);

# -- Parere spiritico --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Parere spiritico",501,2,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Permette di avere una consulenza da un'essenza dell'oltretomba che fornisce
l'informazione desiderata come se avesse un VAL 15 in unàbilità a
D1 basata su CON.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 28, 15);

# -- Parlare con i morti --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Parlare con i morti",502,2,1,"target",1,"N",NULL, 11,NULL,NULL,0, "Permette al Necromante di parlare per 7 minuti con un cadavere posto alla distanza
massima di un metro. Il cadavere effettua un TV a difficoltà 20 per ogni
domanda e risponde in modo sincero alle domande se lo fallisce. In caso contrario
risponde arbitrariamente.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Protezione Esseri del Limbo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Esseri del Limbo I",403,2,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli Esseri del Limbo di potenza inferiore o uguale a 6 non possono entrare
se non realizzando un TV a difficoltà 16. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali ci si sta proteggendo. Il TV della creatura è penalizzato
di -1 per ogni metro all'interno dell'area. L'incantesimo perdura per 7 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 6);

# -- Protezione Esseri del Limbo II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Esseri del Limbo II",403,2,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli Esseri del Limbo di potenza inferiore o uguale a 15 non possono entrare
se non realizzando un TV a difficoltà 25. Realizzando un TV le creature
potranno avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area attacca
le creature dalle quali ci si sta proteggendo. Per ogni metro all'interno dell'area
il TV delle creature è penalizzato di -1. L'incantesimo perdura per 7 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 15);

# -- Protezione Esseri del Limbo III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Esseri del Limbo III",403,2,3,"m",0,"N",NULL, 7,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli Esseri del Limbo di potenza inferiore o uguale a 21 non possono entrare
se non realizzando un TV a difficoltà 31. Realizzando un TV le creature
potranno avanzare di 1 metro all'interno, subendo 1d6 PV di danno netto per
ogni metro all'interno dell'area, L'incantesimo scompare se un essere all'interno
dell'area attacca le creature dalle quali ci si sta proteggendo. Per ogni metro
all'interno dell'area il TV delle creature è penalizzato di -1. L'incantesimo
perdura per 7 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 21);

# -- Sacca del Viaggiatore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sacca del Viaggiatore",310,2,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea attorno al Target una sacca traslucida in grado di dimezzare tutti gli
attacchi fisici da botta, da taglio e da punta. L'incantesimo dura per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Schifo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Schifo I",104,2,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Stordisce le vittima in un raggio di 3 metri provocandole conati di vomito che la inabilitano per il
round in corso e per quello successivo. Per evitare gli effetti è necessario
realizzare un TR a difficoltà 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 15);

# -- Schifo II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Schifo II",104,2,3,"m",0,"N",NULL, NULL,NULL,NULL,0, "Stordisce le vittime provocando conati di vomito che le inabilitano per il
round in corso e per quello successivo. Per evitare gli effetti è necessario
realizzare un TR a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Spirito Consigliere --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Spirito Consigliere",508,2,1,"target",3,"N",NULL, 3,NULL,NULL,0, "Conferisce ad un target posto a non più di 3 metri dal Necromante un bonus
di 15 punti all'abilità Conoscere esseri del Limbo per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 15);

# -- Tappeto di spiriti --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tappeto di spiriti",6,2,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Fa materializzare sotto il target un tappeto di spiriti che gli consentono di
spostarsi in volo a una velocità massima di 100 km/h. Il target deve pesare
massimo 90 kg e avere un equipaggiamento di massimo 100 kg. L'incantesimo viene
mantenuto a concentrazione. Dal momento in cui la concentrazione viene persa
l'incantesimo dura 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 9, 100),(LAST_INSERT_ID(), 101, 100);

# -- Terrore I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Terrore I",104,2,3,"m",0,"N",NULL, NULL,NULL,NULL,0, "Induce nella vittima una sensazione di panico incontrollabile che la inabilitano
per il round in corso e per quello successivo. Per evitare gli effetti è
necessario realizzare un TP a difficoltà 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 15);

# -- Terrore II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Terrore II",104,2,3,"m",0,"N",NULL, NULL,NULL,NULL,0, "Stordisce nella vittima una sensazione di panico incontrollabile che la inabilitano
per il round in corso e per quello successivo. Per evitare gli effetti è
necessario realizzare un TP a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Tocco mortale I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tocco mortale I",102,2,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Infligge 2d6 PV/PSC di danno da gelo (più eventuali danni addizionali da
ustione) su un target con cui si è a contatto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 2),(LAST_INSERT_ID(), 14, NULL);

# -- Tocco mortale II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tocco mortale II",102,2,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Infligge 3d6 PV/PSC di danno da gelo (più eventuali danni addizionali da
ustione) su un target con cui si è a contatto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 3),(LAST_INSERT_ID(), 14, NULL);

# -- Trance spiritica --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Trance spiritica",202,2,1,"target",1,"N",NULL, 11,NULL,NULL,0, "Permette di possedere per 11 minuti il corpo di un target posto a non più
di 1 metro dal Necromante. Questi può evitare la possessione effettuando
un TV a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 25);

# -- Urlo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Urlo",103,2,3,"m",4,"N",NULL, NULL,NULL,NULL,0, "Il necromante emette un urlo lancinante che uccide tutti gli esseri, presenti
in unàrea di 3 metri di raggio fino a 4 metri di distanza, che non realizzano
un TR a difficoltà 25");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 25);

# -- Vampiro --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Vampiro",309,2,1,"target",0,"N",NULL, NULL,NULL,NULL,4, "Cura al Necromante 3d6 PV/PSC prelevandoli da una vittima. La vittima può
evitare gli effetti dell'incantesimo effettuando un TR a difficoltà 20.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 3);

# -- Vermi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Vermi",2,2,1,"m",4,"N",NULL, NULL,NULL,NULL,0, "Crea 90 kg di vermi necrofagi sparsi nel raggio di 1 metro entro 4 metri di
distanza dal Necromante. Ogni verme ha 1 in COS, 1 in CONC, 2 in AGI e 0 nelle
caratteristiche restanti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 4, 4);

# -- Via Morte --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Via Morte",11,2,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Permette al target di massimo 90 kg di peso e con un equipaggiamento di massimo
100 kg di teletrasportarsi in un qualunque luogo entro la distanza di 100 metri
senza errore se nel luogo di arrivo è presente la carcassa di un animale
(umanoidi compresi). In caso contrario l'incantesimo non ha effetto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 100),(LAST_INSERT_ID(), 101, 100);

# -- Visione di Morte --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Visione di Morte",203,2,1,"target",1,"N",NULL, NULL,"permanente",NULL,0, "Fa vivere al target, posto a non più di un metro dal Necromante, il momento
della sua morte, comportandogli una perdita permanente di 10 punti Psiche. La
perdita si produce gradualmente nell'arco di 1d6 giorni se il target non realizza
un TP a difficoltà 20. La perdita può essere curata anche con l'abilità
Medicina.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 10);


insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Amputazione",102,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Fa partire una lama luminosa che infligge 6d6 PV/PSC di danno mirato su un target
a contatto col mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 7, 6),(LAST_INSERT_ID(), 14, NULL);

# -- Anestesia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Anestesia",201,1,1,"target",0,"N",NULL, 11,NULL,NULL,0, "Fa addormentare un target per 11 minuti se questo non realizza un TV a difficoltà
15. Dopo la durata il target dorme per 2d6 ore se non viene svegliato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 15);

# -- Antidolore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Antidolore",12,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Conferisce al target un bonus di +10 all'abilità Resistenza al Dolore per
3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 10);

# -- Antishock --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Antishock",203,1,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Conferisce un bonus di +5 alla Psiche del target per 3 minuti. Il target si
deve a trovare a massimo 4 metri dal mago");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 17, 5);

# -- Asservimento Angeli I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Angeli I",401,1,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Angelo della potenza massima di 12 per un periodo
massimo di 3 minuti. Il mago può impartirgli ordini se vince un Confronto
di TV con esso se è un essere errante, o con chi lo controlla, se è
controllato da qualcuno.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 12);

# -- Asservimento Angeli II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Angeli II",401,1,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Angelo della potenza massima di 19 per un periodo
di 3 minuti. Il mago può impartirgli ordini se vince un Confronto di TV
con esso se è un essere errante, o con chi lo controlla se esso è
gia controllato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Asservimento Angeli III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Asservimento Angeli III",401,1,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Consente di controllare un Angelo della potenza massima di 23 per 3 minuti.
Il mago può impartirgli ordini se vince un confronto di TV con esso se
è un essere errante, o con chi lo domina se l'essere è già controllato.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Barella --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Barella",7,1,1,"target",1,"N",NULL, 2,"concentrazione",NULL,0, "Fa apparire una barella che consente di trasportare un target posto a non più
di 1 metro di distanza e pesante fino a 120 kg e con 100 kg di equipaggiamento
alla velocità di 10 km/h. L'incantesimo viene tenuto a concentrazione.
Al venir meno della concentrazione l'effetto prosegue per 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 120),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 100);

# -- Bisturi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Bisturi",4,1,1,"m",1,"N",NULL, 3,"concentrazione",NULL,0, "Allunga di 10 cm un'unghia del target, rendendola affilatissima e capace di
infliggere 1d6 PV/PSC di danno. L'incantesimo perdura a concentrazione, più
3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 6, 1),(LAST_INSERT_ID(), 7, 1);

# -- Coraggio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Coraggio",204,1,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Conferisce un bonus di +2 alla Volontà di un target posto a non più
di un metro dal mago per la durata di tre minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 12, 2);

# -- Cura follia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cura follia",309,1,1,"target",1,"N",NULL, NULL,NULL,NULL,0, "Restituisce ad un target ad una distanza massima di 1 metro 1d6 di Psiche.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 1);

# -- Cura I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cura I",309,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Cura 1d6 PV/PSC di danno ad 1 target, purchè venga toccato dal mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 1);

# -- Cura II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cura II",309,1,1,"m",1,"N",NULL, NULL,NULL,NULL,0, "Cura 3d6 PV/PSC di danno a tutti gli esseri che si trovano in unàrea di
1 metro di raggio distante fino a 1 metro dall'usufruitore.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 3);

# -- Cura III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cura III",309,1,3,"m",4,"N",NULL, NULL,NULL,NULL,0, "Cura 7d6 PV/PSC di danno a tutti gli esseri che si trovano in unàrea di
4 metro di raggio distante fino a 7 metri dall'usufruitore.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 7);

# -- Devia Colpo I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Devia Colpo I",303,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Devia tutti gli attacchi diretti al target per 3 minuti, con Base TPD pari a
10.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 10);

# -- Devia Colpo II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Devia Colpo II",303,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Devia tutti gli attacchi diretti al target per 3 minuti, con Base TPD pari a
20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 20);

# -- Erboristeria --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Erboristeria",508,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Conferisce al target un bonus di +9 all'abilità Conoscere Piante o +3 all'abilità
Alchimia, per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 9);

# -- Eutanasia I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Eutanasia I",103,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Offre il conforto della morte dolce ad un target. Se il target non vuole spegnersi
dolcemente può vanificare l'effetto dell'incantesimo realizzando un TR
a difficoltà 10.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 10);

# -- Eutanasia II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Eutanasia II",103,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Offre il conforto della morte dolce ad un target. Se il target non vuole spegnersi
dolcemente può vanificare l'effetto dell'incantesimo realizzando un TR
a difficoltà 20.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 15, 20);

# -- Evoca Angeli I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Angeli I",402,1,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca un Caduto, un Rugiel o un Custode Minore per 3 minuti. Il mago può
impartirgli ordini se vince un confronto di TV con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 12);

# -- Evoca Angeli II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Angeli II",402,1,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca un Bayst, un Johaim o un Custode maggiore (o Angeli di potenza inferiore)
per 3 minuti. Il mago può impartirgli ordini se vince un confronto di TV
con esso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Evoca Angeli III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Evoca Angeli III",402,1,1,"target",1,"N",NULL, 3,NULL,NULL,0, "Evoca un Uziel o un Adonai (o un Angelo di potenza inferiore) per 3 minuti.
Il mago può impartirgli ordini se vince un confronto di TV con esso.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Filtro I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Filtro I",310,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea un filtro di luce azzurra che rallenta tutti gli attacchi fisici o quelli
magici di danno mirato diretti al target dividendone il danno per 2. L'incantesimo
dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Filtro II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Filtro II",310,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea un filtro di luce bianca che rallenta tutti gli attacchi fisici o quelli
magici di danno mirato diretti al target dividendone il danno per 4. L'incantesimo
dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 4);

# -- Grandezza --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Grandezza",14,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Dimezza o raddoppia le dimensioni di un target, posto a contatto col mago, pesante
fino a 90 kg e che trasporti un equipaggiamento pesante fino a 100 kg. Il target
può opporsi all'incantesimo realizzando un TR a diff. 18. Dopo 3 minuti
il target riprende le sue dimensioni normali.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 5, 2),(LAST_INSERT_ID(), 101, 100);

# -- Guarigione I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guarigione I",306,1,1,"target",0,"N",NULL, 3,NULL,"1d6 giorni",0, "Guarisce in 1d6 giorni un target da una malattia mortale, se la somma del lancio
di 5d6 supera il numero di PV originari del target (COSx3 + BON FOR escludendo
le variazioni dovute a droghe, incantesimi, etc...) .");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 5),(LAST_INSERT_ID(), 25, NULL);

# -- Guarigione II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guarigione II",306,1,3,"m",0,"N",NULL, NULL,NULL,"1d6 giorni",0, "Guarisce in 1d6 giorni da una malattia mortale tutti gli esseri che si trovano
in unàrea di 3 metri di raggio con centro sul guaritore, se la somma del
lancio di 10d6 supera il numero di PV originari dei target (COSx3 + BON FOR
escludendo le variazioni dovute a droghe, incantesimi, etc...) ");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 10),(LAST_INSERT_ID(), 25, NULL);

# -- Guarigione III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Guarigione III",306,1,3,"m",0,"N",NULL, NULL,NULL,"1d6 giorni",0, "Guarisce in 1d6 giorni da una malattia mortale tutti gli esseri che si trovano
in unàrea di 3 metri di raggio con centro sul guaritore, se la somma del
lancio di 15d6 supera il numero di PV originari del target (COSx3 + BON FOR
escludendo le variazioni dovute a droghe, incantesimi, etc...) .");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 15),(LAST_INSERT_ID(), 25, NULL);

# -- Ibernazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ibernazione",5,1,1,"target",0,"N",NULL, NULL,"permanente",NULL,0, "Conserva permanentemente un corpo di massimo 120 kg di peso, abbassandone la
temperatura interna. Può essere usato anche per conservare cadaveri o cibarie.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 120),(LAST_INSERT_ID(), 2, 12),(LAST_INSERT_ID(), 101, NULL);

# -- Implanto --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Implanto",3,1,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Crea un secondo organo per coadiuvare le funzioni di un organo esistente, per
15 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 30),(LAST_INSERT_ID(), 2, 10),(LAST_INSERT_ID(), 5, NULL);

# -- Incarnazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Incarnazione",202,1,1,"target",0,"N",NULL, NULL,"permanente",NULL,0, "Come Trasferimento Vitale, ma l'usufruitore si incarna definitivamente nel corpo
del target, fino allo scioglimento dell'incantesimo. Alla morte del corpo originario
del mago, l'incantesimo non potrà più essere sciolto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);

# -- Infondi vita --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Infondi vita",2,1,1,"m",0,"N",NULL, NULL,NULL,"1d6 giorni",0, "Dona la vita a tutti gli oggetti inanimati inclusi in unàrea di 1 metro
di raggio, di piccole dimensioni, fino a 30 kg di massa totale (sassi, tavolini,
suppellettili) conferendo loro un numero massimo di PCAT di 40. L'incantesimo
infonde la vita in 1d6 giorni.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 30),(LAST_INSERT_ID(), 4, 40);

# -- Medicina --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Medicina",508,1,1,"target",0,"N",NULL, 15,NULL,NULL,0, "Attribuisce al target un bonus di +5 all'abilità Medicina per 15 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 15);

# -- Para Urti I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Para Urti I",304,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea due sfere luminose orbitanti attorno al target aventi lo scopo di parare
ciascuna un attacco diretto ad esso, con Base TPD pari a 20. Ognuna delle sfere
scompare dopo aver parato un attacco. Le sfere scompaiono comunque dopo 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 20),(LAST_INSERT_ID(), 22, 2);

# -- Para Urti II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Para Urti II",304,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea 5 sfere luminose orbitanti attorno al target aventi lo scopo di parare
ciascuna un attacco diretto ad esso, con Base TPD pari a 20. Ognuna delle sfere
scompare dopo aver parato un attacco. Le sfere scompaiono comunque dopo 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 20),(LAST_INSERT_ID(), 22, 5);

# -- Protezione Angeli I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Angeli I",403,1,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli angeli di potenza inferiore o uguale a 12 non possono entrare se non
realizzando un TV a difficoltà 22. Realizzando un TV le creature potranno
avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area protetta
attacca le creature dalle quali si sta proteggendo. Per ogni metro all'interno
dell'area il TV delle creature è penalizzato di -1. L'incantesimo perdura
per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 12);

# -- Protezione Angeli II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Angeli II",403,1,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli angeli di potenza inferiore o uguale a 19 non possono entrare se non
realizzando un TV a difficoltà 29 Realizzando un TV le creature potranno
avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area protetta
attacca le creature dalle quali si sta proteggendo. Per ogni metro all'interno
dell'area il TV delle creature è penalizzato di -1. L'incantesimo perdura
per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 19);

# -- Protezione Angeli III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Protezione Angeli III",403,1,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Viene creata attorno al mago unàrea di 3 metri di raggio all'interno della
quale gli angeli di potenza inferiore o uguale a 23 non possono entrare se non
realizzando un TV a difficoltà 33. Realizzando un TV le creature potranno
avanzare di 1 metro, subendo 1d6 PV di danno netto per ogni metro all'interno
dell'area, L'incantesimo scompare se un essere all'interno dell'area protetta
attacca le creature dalle quali si sta proteggendo. Per ogni metro all'interno
dell'area il TV delle creature è penalizzato di -1. L'incantesimo perdura
per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 27, 23);

# -- Purificazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Purificazione",5,1,1,"m",0,"N",NULL, 3,NULL,NULL,0, "Sterilizza cibo e acqua fino ad una massa totale di 100 kg. Se il cibo purificato
non viene conservato in maniera idonea entro 3 minuti, potrà nuovamente
andare a male.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 2, 6),(LAST_INSERT_ID(), 101, 100);

# -- Raggio di luce --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Raggio di luce",101,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Investe un target di un lampo luminoso di energia che gli infligge 10d6 PV (Più
eventuali Danni Addizionali da ustione) di danno netto dimezzabile con un TR
a difficoltà 30. L'incantesimo deve essere effettuato a contatto.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 13, 10);

# -- Restauro --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Restauro",308,1,3,"m",1,"N",NULL, NULL,NULL,NULL,0, "Ripara danni a tutti gli oggetti posti all'interno di unàrea di 3 metri
di raggio, per un totale di 5d6 Punti Struttura per ogni oggetto. Il centro
dell'area di 3 metri può distare fino ad 1 metro dal mago.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 5);

# -- Resurrezione I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Resurrezione I",306,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Resuscita un target se il risultato del lancio di 7d6 supera o eguaglia il numero
totale dei PV originari del target (COSx3 + BON FOR escludendo gli effetti di
droghe, incantesimi, etc...), purchè non sia trascorso più di 1 giorno
dal decesso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 7),(LAST_INSERT_ID(), 25, 1);

# -- Resurrezione II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Resurrezione II",306,1,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Resuscita un target se il risultato del lancio di 10d6 supera o eguaglia il
numero totale dei PV originari del target (COSx3 + BON FOR escludendo gli effetti
di droghe, incantesimi, etc...), purchè non siano trascorsi più di
5 giorni dal decesso.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 10),(LAST_INSERT_ID(), 25, 5);

# -- Ricostruzione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ricostruzione",308,1,10,"m",4,"N",NULL, 3,NULL,"1d6 giorni",0, "Ripara danni a tutti gli oggetti posti all'interno di unàrea di 10 metri
di raggio, per un totale di 10d6 Punti Struttura per ogni oggetto. Il centro
dell'area di 10 metri può distare fino a 4 metri dal mago. I danni verranno
riparati gradualmente in 1d6 giorni.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 10);

# -- Riposo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Riposo",309,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Restituisce al target 4d6 PF o 4d6 PM.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 4);

# -- Risveglio I --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Risveglio I",307,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Rianima dal coma un target se il risultato del lancio di 5d6 eguaglia o supera
il numero totale dei PV originari del target (COSx3 + BON FOR escludendo gli
effetti di droghe, incantesimi, etc...).");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 5);

# -- Risveglio II --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Risveglio II",307,1,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Rianima dal coma un target se il risultato del lancio di 10d6 eguaglia o supera
il numero totale dei PV originari del target (COSx3 + BON FOR escludendo gli
effetti di droghe, incantesimi, etc...).");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 10);

# -- Sfera di immunità --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera di immunità",305,1,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Protegge tutti i target che stanno all'lnterno di unàrea di 1 metro di
raggio, distante fino a 1 metro dall'usufruitore, da ogni incantesimo di Attacco/Danno
netto, assorbendo 7d6 di danno, nel corso di 3 minuti.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 23, 7);

# -- Sfera di vita --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Sfera di vita",302,1,1,"m",1,"N",NULL, 3,NULL,NULL,0, "Crea una sfera di 1 metro di raggio che garantisce una protezione pari a 10
PP su tutti coloro che stanno al suo interno. La protezione dura 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 10);

# -- Trasferimento vitale --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Trasferimento vitale",202,1,1,"target",0,"N",NULL, 15,NULL,NULL,0, "L'usufruitore trasferisce la sua essenza vitale all'lnterno di un ospite per
15 minuti. Durante questo tempo il corpo dell'usufruitore resterà in catalessi.
Il target potrà sottrarsi all'incantesimo realizzando un TV a difficoltà 20");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 20);


# -- Agronomo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Agronomo",508,7,1,"target",0,"N",NULL, 7,NULL,NULL,0, "Conferisce all'usufruitore un bonus di +5 all'abilità conoscere piante
per 7 minuti
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Allevatore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Allevatore",508,7,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Conferisce all'usufruitore un bonus di +5 all'abilità Ammaestrare finchè
l'usufruitore mantiene la concentrazione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 10);

# -- Aratro --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Aratro",1,7,1,"target",1,"N",NULL, NULL,"concentrazione",NULL,0, "Crea dal nulla un aratro che perdura per tutto il tempo in cui il mago resta
concentrato.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 3),(LAST_INSERT_ID(), 3, 30);

# -- Controllo Funi --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Controllo Funi",6,7,1,"target",4,"N",NULL, 3,NULL,NULL,0, "Permette all'usufruitore di spostare a suo piacimento una fune pesante massimo
30 Kg alla velocità di 10 Km/h. L' incantesimo perdura per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 30);

# -- Conversazione --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Conversazione",502,7,2,"target",7,"N",NULL, 3,NULL,NULL,0, "Consente all'usufruitore di parlare con uno o due animali distante sino a 7 metri per
3 minuti");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 16, 1);

# -- Gran lavoratore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Gran lavoratore",14,7,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Raddoppia le dimensioni dell'usufruitore qualora pesi fino a 120 kg ed abbia
non più di 100 kg di carico, fino a quando questi resta concentrato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 120),(LAST_INSERT_ID(), 5, 2),(LAST_INSERT_ID(), 101, 100);

# -- Meteorologo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Meteorologo",503,7,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Consente all'usufruitore di prevedere il tempo che farà nelle successive
12 ore");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 29, 1),(LAST_INSERT_ID(), 30, 12);

# -- Mulo --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Mulo",7,7,1,"target",1,"N",NULL, 11,NULL,NULL,0, "Consente di trasportare sul piano fino a 100 kg di massa non vivente posta entro
un metro alla velocita di 10 km/h per 11 minuti");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, NULL),(LAST_INSERT_ID(), 9, 10),(LAST_INSERT_ID(), 101, 100);

# -- Torcia --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Torcia",1,7,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Crea una torcia accesa che dura per tutto il tempo in cui l'usufruitore resta
concentrato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 2, 2),(LAST_INSERT_ID(), 3, 30);

# -- Vigore --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Vigore",12,7,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Attribuisce all'abilita Resistenza alla fatica dell'usufruitore un bonus di
+10 finché egli rimane concentrato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 10);

# -- Anti Infortunio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Anti Infortunio",310,8,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Divide per 2 tutti i danni da botta, da taglio e da punta subiti dal Target
nell'arco di 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 26, 2);

# -- Antifiamma --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Antifiamma",305,8,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Protegge per 3 minuti l'usufruitore, assorbendo 4d6 PV di danno dovuto a fuoco
per ogni attacco");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 23, 4);

# -- Antiveleno --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Antiveleno",12,8,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Conferisce al target un bonus di +5 all'abilità Resistenza ai Veleni per
3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 11, 5);

# -- Artigiano --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Artigiano",308,8,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Ripara 2d6 Punti Struttura di un oggetto danneggiato.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 2);

# -- Bendaggio --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Bendaggio",309,8,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Cura 2d6 PV/PSC ad un target.
");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 24, 2);

# -- Corazza --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Corazza",302,8,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Conferisce all'usufruitore una protezione pari a 6 PP per 3 minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 6);

# -- Cortina fumogena --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Cortina fumogena",215,8,3,"m",0,"N",NULL, 3,NULL,NULL,0, "Illude i target entro un raggio di 3 metri di trovarsi immersi in una densa
nube di fumo, nascondendo l'usufrutore. Realizzando un TOSS a difficoltà
15 le vittime scopriranno il trucco e con un successivo TV a 15 potranno dissolvere
l'illusione.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 18, 15);

# -- Ritirata --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ritirata",9,8,1,"target",0,"N",NULL, NULL,NULL,NULL,0, "Teletrasporta un target del peso massimo di 90 kg fino a 100 metri di distanza.
Il teletrasporto non agisce sull'equipaggiamento.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 1, 90),(LAST_INSERT_ID(), 10, 100),(LAST_INSERT_ID(), 101, NULL);

# -- Tuta --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Tuta",302,8,1,"target",0,"N",NULL, NULL,"concentrazione",NULL,0, "Protegge l'usufruitore con una tuta di tela che gli conferisce una protezione
di 1 PP per tutti i danni da botta, da taglio o da punta. La protezione dura
a concentrazione più tre minuti.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 20, 1);

# -- Ferros III --
insert into incantesimi 
    (nome,tipo,scuola,raggio,tipo_raggio,gittata,azione_gittata,rimbalzi,durata,tipo_durata,azione_tempo,bonus_tr,descrizione)
values
    ("Ferros III",304,8,1,"target",0,"N",NULL, 3,NULL,NULL,0, "Crea 3  sfere rotanti attorno al target capaci di parar 
altrettanti attacchi portati nell'arco di 3 minuti con una base TPD pari a 15.");

insert into parametri_incantesimi values (LAST_INSERT_ID(), 21, 15),(LAST_INSERT_ID(), 22, 3);

