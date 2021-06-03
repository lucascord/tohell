#!/bin/bash
# Autor: Lucas cordeiro
#
# Este programa irá realizar um backup de full de arquivos localizados 
# no servidor, ond eteremos que copiar a pasta /srv/samba
#
#Exemplo de execução
#
#
BKPDIR="/srv/bkp"
FILESDIR="/srv/samba"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
FILENAME="tar${date _%d_%m_Y}"
COMPACT="tar -zxcv $FILENAME $BKPDIR"
DATE=$()


echo -e "\n"
echo "Iniciando o Script de backup"
echo -e "\n"


verificar() {

if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	exit 1
fi
}

mail() {
	mail -S "Mensagem de Backup" $ADMIN << EOF
}


rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
[-f $COMPACT] || $COMPACT
exit
