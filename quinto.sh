#!/bin/bash
#
# quinto.sh - nosso quarto programa em  SHELL - Condicionais case#
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#
#-------------------------------------------------------------------------
# Este programa receberá um parametro na variavel $1, caso o primeiro parametro passado seja START, carregará os códigos do primeiro bloco. 
# Caso o parametro seja STATUS irá verificar se o programa está em execução
# Caso o terceiro parametro seja STOP, informará que o programa não está em execução.
# Caso não seja passado nenhum parametro, o sistem irá informar também
#
# Exemplo de execução:
#
#
# $ ./quinto.sh start
#
# ....
# .........
# .............
# Programa iniciado com sucesso!
#
# 
# Histórico de versões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL
#
#
#
PID="/tmp/status.pid"
echo
echo "Bem vindo ao quinto programa em shell script, disponibilizado pela utah!"
echo
case $1 in
	start)
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
		touch $PID
		echo "Programa iniciado com sucesso"
		;;
	status)
		echo
		if [ -f "$PID" ]; then
			echo "O Programa está em execução!"
		else
			echo "O Programa está parado!"
		fi
		;;
	stop)
		echo
		echo
		sleep 2s
		echo "...."
		rm $PID
		echo "O Programa encontra-se parado"
		;;
	*)
		echo
		echo "Por favor digite : ./quinto start | status | stop"
		;;
esac


