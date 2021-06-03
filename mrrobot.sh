#!/bin/bash
# Autor: Lucas cordeiro
#
source /root/doshelltohell/tohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOlá eu sou o Mr. Robot, fui criado para atacar. Não sou seu amigo, o que quer que eu faça?\e[m\e[m\e[e\[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga Agora" ACTION
	echo -e "\n"
	
	
	case $ACTION in 
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
		 	ping -c 4 -4 "${sites[$DADO]}"
		;;
		
		*"nmap"*|*"mapear"*|"*portas abertas"*)
			DADO="$(( $RANDOM % 10))"
			 nmap -sS "${sites[$DADO]}"
		;;
	esac
done



