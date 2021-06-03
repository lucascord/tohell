#!/bin/bash
#
# jaziel.sh - nosso sexto programa em  SHELL - tirar sarro do jaziel#
# Homepage: 
# Autor: Lucas cordeiro
#
#
#
#
# Exemplo de execução:
#
#
# $ ./jaziel.sh 
# Você está com seus amigos e dai só tem uma coisa a dizer:
# Errado voce não é amigo do jaziel
# Parabens voce passou no teste amizade com jaziel, ela irá te recompensar
# 
# Histórico de versões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL
#
#
#

echo
echo "Bem vindo ao programa de testes de amizade do Jaziel"
echo
JAZIEL="éfd"



		echo "Aguarde o programa ser carregado"
		sleep 2s
		echo "..."
		sleep 2s
		echo "...."
		sleep 2s
		echo "....."
		sleep 2s
		echo "................."
		sleep 2s
		echo ".........................."
		sleep 2s
		echo "................................"
		echo
		echo "Qual a frase mais falada pelo nosso amigo:"
		read TESTE
		if [ "$TESTE" == $JAZIEL ]; then 
			echo "Parabens, voces são amigões do jaziel!"
		else
			echo "Revejam suas amizades!"
		fi
		
	


