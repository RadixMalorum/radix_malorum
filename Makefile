demo:
	echo "\fullversionfalse" > fullversioncfg.tex	
	latex manual.tex

demoweb: demo
	dvips manual.dvi
	cp manual.ps /home/nicola/projects/radix/binaries/radix_demo.ps

manual:
	echo "\fullversiontrue" > fullversioncfg.tex	
	latex manual.tex
