select 
incantesimi.id, 
incantesimi.nome, 
scuole.nome, 
categorie.nome, 
tipi.nome, 
incantesimi.scuola, 
categorie.id,
incantesimi.tipo,
tipi.dt,
potenzialita.valore,
incantesimi.descrizione,
incantesimi.durata,
incantesimi.tipo_durata,
incantesimi.gittata,
incantesimi.azione_gittata,
incantesimi.rimbalzi,
incantesimi.raggio,
incantesimi.tipo_raggio,
incantesimi.azione_tempo,
incantesimi.bonus_tr
from incantesimi, scuole, tipi, categorie, potenzialita
where 
scuole.id=incantesimi.scuola 
and tipi.id=incantesimi.tipo 
and categorie.id=tipi.categoria
and potenzialita.scuola=scuole.id
and potenzialita.categoria=categorie.id
order by incantesimi.scuola, incantesimi.nome;