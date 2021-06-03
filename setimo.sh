#!/bin/bash
#
# setimo.sh - Nosso 7ª programa em shell - Laço de repetiçao until
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#
#-------------------------------------------------------------------------
# Este programa irá verificar o valor da variavel NUMERO, enquanto o valor
# da variavel não for 10, ele irá mostrar a mensagem na tela que o valor
# não é 10
#
#
# Exemplo de execução:
#
#
# $ ./sexto.sh 
# O valor da varivel é 0, que é menor que 10
# O valor da varivel é 1, que é menor que 10
#
#
NUMERO="0"

echo
echo "Bem vindo ao programa de números"
echo
until [ $NUMERO -eq "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done
exit 0
