#!/bin/bash
clear
echo "Informe o dominio: "
read dominio
​
DOMAIN_REGEXP="[a-zA-Z]+(\.[a-zA-Z]+)"
​
if [[ -z $dominio ]]; then
    echo “Ops, você precisa passar um domínio válido como argumento!” | 
    exit
elif [[ $dominio =~ $DOMAIN_REGEXP ]]; then
  echo "$dominio" || exit
elif [ -e "$dominio" ]; then
whois "$dominio" > "$dominio".info
else
  echo “Ops, argumento inválido!”
  exit 1
fi
clear
echo "Foi criado em sua pasta o arquivo $dominio.info com as informações do domínio"