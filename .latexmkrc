$pdf_mode = 3;

$latex = 'platex -synctex=1 -kanji=utf8 -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
$bibtex = 'pbibtex -kanji=utf8 %O %B';
$makeindex = 'mendex -U %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';

$clean_ext = 'bbl blg fdb_latexmk fls synctex.gz vrb';
