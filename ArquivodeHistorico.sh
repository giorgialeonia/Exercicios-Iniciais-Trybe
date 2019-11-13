#!/bin/bash
#HISTFILE=~/.bash_history
#set -o history
clear
echo -e "Arquivador de Histórico do Terminal\n"
echo "Digite o valor inicial: "
read valorInicial
clear
echo "Digite o valor final: "
read valorFinal
clear
echo "Qual será o nome do arquivo: "
read nomeArquivo
​
history | cat >> historico.txt
​
​
if [ -z "$valorInicial""$valorFinal""$nomeArquivo" ]
then
echo "Você precisa inserir valores para criar seu arquivo"
exit
else
cat < historico.txt | sed -n ''"$valorInicial"','"$valorFinal"'p' >> "$nomeArquivo".txt || exit
echo "Você criou seu arquivo com sucesso, envie para answer@trybe.com"
fi 