#!/bin/bash
#
# sexto.sh - nosso quarto programa em  SHELL - Laços de repetição while
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#
#-------------------------------------------------------------------------
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variável for menor que 10, ele irá mostrar na tela a mensagem que o valor é menor que 10 e mostrará o valor da variavel, quando o valor atingir #10, o programa será finalizado
#
# Exemplo de execução:
#
#
# $ ./sexto.sh 
# O valor da varivel é 0, que é menor que 10
# O valor da varivel é 1, que é menor que 10
#
NUMERO="0"

echo
echo "Bem vindo ao programa de números"
echo
while [ $NUMERO -lt "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done
exit 0
