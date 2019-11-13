#!/bin/bash
clear
echo -e "Contador de tempo de leitura\n"
echo -e "Onde se encontra o diretório do arquivo a ser verificado? ex: /home/usuario/pasta\n"
read -r caminho
if [ -z "$caminho" ]
then
echo "Você precisa inserir um diretório"
exit
elif [ -d "$caminho" ]
then 
cd "$caminho" || exit
clear
else
echo "Você precisa inserir um diretório" || exit
clear
fi
​
echo -e "Qual arquivo você deseja analisar?\n\n"
find . -name “*.txt” -print | ls -1
read -r arquivo
if [ -z "$arquivo" ]; then echo "Você precisa escolher o arquivo"
else
clear
fi
​
echo -e "Qual a sua velocidade de leitura em palavras por minuto?\n"
echo -e "Faça um teste para descobrir seu P.P.M no site: encurtador.com.br/HMOR4\n\n"
read velocidade
if [ -z "$velocidade" ]; then echo -e "Você precisa inserir sua velocidade de leitura em palavras por minuto\n" exit
else
clear
fi
​
qntdPalavras=$(wc -w < "$arquivo")
​
echo -e "O arquivo escolhido possui $qntdPalavras palavras\n"
contador=$(echo "scale=0; $qntdPalavras * 60 / $velocidade " | bc) 
contadormin=$(echo "scale=0; $qntdPalavras / $velocidade" | bc)
contadorseg=$(echo "scale=0; ($qntdPalavras * 60 / $velocidade) % 60 " | bc)
echo -e "Você conseguirá ler o texto escolhido em \n\n$contadormin minutos e $contadorseg segundos.\nOu em $contador segundos."