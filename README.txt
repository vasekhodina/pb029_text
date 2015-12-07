Repozitář k úkolu se nachází na GitHubu:
https://github.com/vasekhodina/pb029_text

Pro naklonování repozitáře slouží příkaz:
git clone https://github.com/vasekhodina/pb029_text.git

Pro vysázení dokumentu by měl stačit příkaz "make all" z kořenové složky repozitáře
Pro úklid slouží příkaz "make clean", uvede repozitář do původního stavu
Další příkazy jsou:
	make pdf: Vysází pouze pdf dokument
	make mpobrazek: Vytvoří MetaPostový obrázek
	make bibliografie: připraví bibliografické záznamy použitím biberu
	make rejstrik: připraví rejstřík použitím texindy

pokud z nějakého důvodu nebude make fungovat dá se vysázet dokument manuálně pomocí příkazů:
	mpost -tex=latex obrazek.mp
	pdflatex homework.tex
	biber homework
	texindy -I latex -L czech  homework.idx
	pdflatex homework.tex

Ve složce final_document je i mnou vysázený dokument ve konečné podobě. Přidal jsem ho pro přehled a pro případ, že by během sázení došlo k problémům.
