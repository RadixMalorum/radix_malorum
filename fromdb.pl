#!/usr/bin/perl
use DBI;
use POSIX;

$dbh = DBI->connect("dbi:mysql:radix","apprendisti","radix");

$select_parametri_sql="select distinct
parametri_incantesimi.valore,
parametri.nome,
parametri.punti_per_unita,
parametri.divisore_unita,
parametri.unita,
parametri.log10
from parametri_incantesimi, parametri, formule, incantesimi 
where formule.tipo=incantesimi.tipo 
and parametri_incantesimi.parametro=formule.parametro 
and parametri.id=parametri_incantesimi.parametro 
and parametri_incantesimi.incantesimo=?
";

$select_incantesimi_sql="select 
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
incantesimi.bonus_tr,
incantesimi.icon
from incantesimi, scuole, tipi, categorie, potenzialita
where 
incantesimi.scuola=? 
and scuole.id=incantesimi.scuola 
and tipi.id=incantesimi.tipo 
and categorie.id=tipi.categoria
and potenzialita.scuola=scuole.id
and potenzialita.categoria=categorie.id
order by incantesimi.scuola, incantesimi.nome";

$query_incantesimi=$dbh->prepare($select_incantesimi_sql);
$query_parametri=$dbh->prepare($select_parametri_sql);
$sc=$ARGV[0];if (!$sc)  {$sc=4}
if ($query_incantesimi->execute($sc)) {
  while (@result=$query_incantesimi->fetchrow_array) {
    $id=$result[0];
    $nome=$result[1]; $nome=~s/(à|&agrave)/\\\`a/g;
    $nome_scuola=$result[2]; $nome_scuola=~s/(à|&agrave)/\\\`a/g;
    $nome_categoria=$result[3];
    $nome_tipo=$result[4]; $nome_tipo=~s/(à|&agrave)/\\\`a/g;
    $id_scuola=$result[5];
    $id_categoria=$result[6];
    $id_tipo=$result[7];
    
    $dt=$result[8];
    $potenzialita=$result[9];
    $descrizione=$result[10];
    $result_durata=$result[11];
    $result_tipo_durata=$result[12];
    $result_gittata=$result[13];
    $result_azione_gittata=$result[14];
    $result_rimbalzi=$result[15];
    $result_raggio=$result[16];
    $result_tipo_raggio=$result[17];
    $result_azione_tempo=$result[18];
    $result_bonus_tr=$result[19];
    $result_icon=$result[20];
   
    $db=0;
    if ($query_parametri->execute($id)) {
      while (@p_result=$query_parametri->fetchrow_array) {
	$p_valore=$p_result[0];
	$p_punti_per_unita=$p_result[2];
	$p_divisore_unita=$p_result[3];
	$p_log10=$p_result[5];
	if ($p_log10 eq "Y" && $p_valore>0) {
	  $p_valore_log=log10($p_valore);
	}
	else {
	  $p_valore_log=$p_valore;
	}
	
	$db_p=POSIX::ceil($p_valore_log/$p_divisore_unita)*$p_punti_per_unita;
	
	$db=$db+$db_p;
      };
    };

    $mod=0;
    $mod_gittata_metri=POSIX::floor(($result_gittata-1)/3);
    $mod_gittata_rimbalzi=$result_rimbalzi;
    $mod_gittata_azionegittata=(($result_azione_gittata eq "Y")?3:0);
    $mod_gittata=$mod_gittata_metri+$mod_gittata_rimbalzi+$mod_gittata_azionegittata;

    $mod_tipo_durata=0;
    if ($result_tipo_durata eq "concentrazione") {$mod_tipo_durata=5;}
    elsif ($result_tipo_durata eq "permanente") {$mod_tipo_durata=15;}
    elsif ($result_tipo_durata eq "permanenza ciclica") {$mod_tipo_durata=20;}

    $mod_durata=POSIX::floor($result_durata/4);
    
    $mod_raggio=0;
    if ($result_tipo_raggio eq "m") {  $mod_raggio=$result_raggio}
    elsif ($result_tipo_raggio eq "target") {$mod_raggio=$result_raggio*2}
    elsif ($result_tipo_raggio eq "d6 target") {$mod_raggio=$result_raggio*6}
    
    
    $mod_azione_tempo=0;
    if ($result_azione_tempo eq "1d6 ore") {$mod_azione_tempo=0;}
    elsif ($result_azione_tempo eq "6d4 ore") {$mod_azione_tempo=-1;}
    elsif ($result_azione_tempo eq "1d6 giorni")  {$mod_azione_tempo=-3;}
    elsif ($result_azione_tempo eq "1d4 settimane") {$mod_azione_tempo=-5;}
    elsif ($result_azione_tempo eq "oltre 1 mese") {$mod_azione_tempo=-7;}
     
    $mod_bonus_tr=$result_bonus_tr;
     
    $mod=$mod_gittata+$mod_durata+$mod_tipo_durata+$mod_raggio+$mod_azione_tempo+$mod_bonus_tr;
    
    $da=$dt+$db+$mod;
    $dr=$da-$potenzialita;
    
    $pm=$dr;if ($pm<1) {$pm=1;};
    $pf=POSIX::floor($dr/3);if ($pf<1) {$pf=1;};
    $pe=$da;if ($pe<1) {$pe=1};
    $tl=POSIX::floor($dr/6); if ($tl<1) {$tl=1;};

#-----------------------------------------------------------------------------

    print "%----------------------------------------------------------------------------\n";
    print "\\begin{spell}{$nome}{$nome_scuola}{$nome_categoria}{$nome_tipo}\n";
    print "%----------------------------------------------------------------------------\n"; 

    $descrizione=~s/(à|&agrave;)/\\\`a/g;
    $descrizione=~s/(è|&egrave;)/\\\`e/g;
    $descrizione=~s/(é|&eacute;)/\\\'e/g;
    $descrizione=~s/(ì|&igrave;)/\\\`i/g;
    $descrizione=~s/(ò|&ograve;)/\\\`o/g;
    $descrizione=~s/(ù|&ugrave;)/\\\`u/g;

    print "\\descrizione{$descrizione}\n";
    
    print "%% DR DA DT DB MOD PM PF PE TL\n";
    print "\\incvalori{$dr}{$da}{$dt}{$db}{$mod}{$pm}{$pf}{$pe}{$tl}\n";

    if ($query_parametri->execute($id)) {
      while (@p_result=$query_parametri->fetchrow_array) {
	$p_valore=$p_result[0];
	$p_nome=$p_result[1];    $p_nome=~s/(à|&agrave)/\\\`a/g;
	$p_punti_per_unita=$p_result[2];
	$p_divisore_unita=$p_result[3];
	$p_unita=$p_result[4];$p_unita=~s/(à|&agrave)/\\\`a/g;

	if ($p_valore==1) {
	  $p_unita=~s/i$/o/g;
	  $p_unita=~s/e$/a/g;
	}

	$p_log10=$p_result[5];
	if ($p_log10 eq "Y" && $p_valore>0) {
	  $p_valore_log=log10($p_valore);
	}
	else {
	  $p_valore_log=$p_valore;
	}
	
	$db_p=POSIX::ceil($p_valore_log/$p_divisore_unita)*$p_punti_per_unita;
	
	print "\\parametro{$p_nome}{$p_valore}{$p_unita}{$db_p}\n";
	$db=$db+$db_p;
      };
    };
    print "\\fineparametri\n";

    if ($result_gittata) {print "\\gittata{$result_gittata}{$mod_gittata_metri}\n";}
    else {print "\\gittatanulla\n";}
    if ($result_rimbalzi) {print "\\rimbalzi{$result_rimbalzi}\n";}
    if ($result_azione_gittata eq "Y") {print "\\azionegittata\n";}
    print "\\campo{$result_raggio}{$result_tipo_raggio}{$mod_raggio}\n";


    if ($result_durata && $mod_tipo_durata) {print "\\durata{$result_tipo_durata+$result_durata min}{$mod_tipo_durata+$mod_durata}\n";}
    elsif ($result_durata) {print "\\durata{$result_durata min}{$mod_durata}\n";}
    elsif ($mod_tipo_durata) {print "\\durata{$result_tipo_durata }{$mod_tipo_durata}\n";}
    else {print "\\duratanulla\n";}
    if ($mod_azione_tempo) {print "\\azionetempo{$result_azione_tempo}{$mod_azione_tempo}\n";}
    if ($mod_bonus_tr) {print "\\bonustr{$result_bonus_tr}\n";}

    print "\\end{spell}\n";
    if ($result_icon) {print "\\filler{$result_icon}\n";}
  }
}



