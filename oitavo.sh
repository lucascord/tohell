#!/bin/bash
#
# oitavo.sh - Nosso 8ª programa em shell - Laço de repetiçao for
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#
#-------------------------------------------------------------------------
# Este programa irá mostrar uma mensagem na tela para cad aarquivo .conf
# encontrado no diretório /etc
# 
#
#
# Exemplo de execução:
#
#
# $ ./oitavo.sh 
# O arquivo /etc/exz.conf foi encontrado no diretório /etc
# 
#
#
ARQUIVOS="/etc/*.conf"

echo
echo "Bem vindo ao programa de listagem de arquivos .conf"
echo
for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretório /etc"
done
exit 0
