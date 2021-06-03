#!/bin/bash
#
# Segundo.sh - nosso terceiro script em  SHELL - Condicionais if then else#
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#-------------------------------------------------------------------------
# Este programa ira mostrar capturar o primeiro parametro digitado, ira ar#mazenar na $1 e comparar com a variavel segredo, se estiver ok  irá mostra#r na tela
#
# Exemplo de execução:
#
#
# $ ./terceiro.sh utah
#  Meus parabens, voce acertou o segredo
# 
# $ ./terceiro.sh blue
# ERROUUUUUU
#
# Histórico de versões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL
#
SEGREDO="utah"
echo
echo "Bem vindo ao detector de segredos"
echo
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabens, voce está na melhor em Linux do Brasil"
else
	echo "Ta moscando, perdendo tempo na $1"
	echo
fi
