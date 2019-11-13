#!/bin/bash

echo "Que mensagem você deseja enviar?"
read MESSAGE
​
if [[ -z $MESSAGE ]]
then
echo "Ops, você precisa passar uma mensagem como argumento!"
exit
else
echo "Sua mensagem foi enviada com sucesso"
fi
​
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$MESSAGE\"}" https://hooks.slack.com/services/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