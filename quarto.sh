#!/bin/bash
#
# quarto.sh - nosso quarto programa em  SHELL - Condicionais if then else#
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#
#-------------------------------------------------------------------------
# Este programa ira capturar o valor digitado pelo usuario e irá armazena # na variavel $DIGITADO e comparar com a variavel SEGREDO, se os valores 
# iguais ira mostrar na tela o segredo, se não for vai dar erro
#
# Exemplo de execução:
#
#
# $ ./quarto.sh
#  Digite o segredo:
# blue
# ERROUUUUUU. Está moscando na blue
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
echo "Por favor, digite o segredo:"
#read captura o que foi digitado no teclado
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabens, voce está na melhor em Linux do Brasil"
else
	echo "Ta moscando, perdendo tempo na $DIGITADO"
	echo
fi
