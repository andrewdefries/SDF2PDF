rm PrintBatchMeat.tex

for j in *.smi.tex
do
##############
echo "\centering">>PrintBatchMeat.tex
echo "\input{$j}">>PrintBatchMeat.tex
echo "\section{$j}">>PrintBatchMeat.tex
echo "\clearpage" >>PrintBatchMeat.tex
##############
done
##################
cat PrintBatchTop.tex PrintBatchMeat.tex PrintBatchBottom.tex > PrintBatchAll.tex
pdflatex PrintBatchAll.tex
