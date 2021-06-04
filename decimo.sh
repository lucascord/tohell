#!/bin/bash
#
#
#
#
#
# Autor: Lucas cordeiro
#
#
#
#
# Este programa irá realizar um backup de full de arquivos localizados
# no servidor, onde teremos que copiar /srv/samba para /srv/bkp
#
#
#Exemplo de execução
#./decimo.sh
#
#
#
#
# BKPDIR - local onde serão destinados os arquivos de backup
BKPDIR="/srv/bkp" #local onde serão destinados os arquivos de backup
#
# FILESDIR - local onde encontram-se os arquivos de origem, que faremos backup.
FILESDIR="/srv/samba"
#
# LOGFILE - Local onde ficam armazenados os arquivos de logs dos backups OK
LOGFILE="/var/log/backup.log"
#
# ERRORLOG - Local onde ficam armazenados os arquivos de logs que deram ERRO
ERRORLOG="/var/log/backup_error.log"
#
#FILENAME - Prefixo junto ao nome ao arquivo de backup
FILENAME="/srv/backup_tar_$DATE.tar.gz"
#
# COMPACT - Variavel que tem como função zipar o conteúdo  indicado na variável
COMPACT="tar -cvzf $FILENAME $BKPDIR"
#
# DATE - Variável que irá acrescentrar a data que o baclup foi feito
DATE=$(date +%d_%m_%Y)
#
# SENDUSER - E-mail que será notificado
SENDUSER="root@stronger.local"
#
ADMIN="lucas.cordeiro360@gmail.com"


echo -e "\n"
echo "Iniciando o Script de backup"
echo -e "\n"


verificar() {

if [ $? -eq 0 ]; then
        echo "Comando OK"
else
        echo "Erro"
        mail_err
        exit 1
fi
}

mail() {
        sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de backup" -a $LOGFILE -m "Segue"
}

mail_err() {
        sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de erro no backup" -a $ERRORLOG -m "Segue"
}

rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
verificar

exit 0
