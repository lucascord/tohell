#!/bin/bash
#
# Segundo.sh - nosso segundo programa em shell - Variaveis de controle interna
#
# Homepage: https://utah.com.br
# Autor: Lucas cordeiro
#
#
#-------------------------------------------------------------------------
# Este programa ira mostrar as proncipais variaveis de controle do shell
# que poderão ser usadas por outros programas a fim de obtermos alguma inf
# informação
#
# Exemplo de execução:
#
#
# $ ./segundo.sh linux
# O valor da variavel $1 é linux
# $ ./segundo.sh linux windows
# O Valor da variavel $1 é linux
# O Valor da variavel S2 é windows
#
# Histórico de versões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL

echo "Bem vindo as variaveis de controle Internas em Shell"
echo
echo "A variável \$1 armazena o primeiro parametro passado depois do script: $1"
echo
echo "A variável \$2 armazena o segundo parametro passado depois do script: $2"
echo
echo "A variável \$3 rmazena o terceiro parametro passado depois do script: $3"
echo
echo "A variável \$0 exibe o programa executado: $0"
echo
echo "A variável \$# armazena os parametros passado depois do script: $#"
echo
echo "A variável \$\$ armazena o PID do processo gerado: $$"
echo
echo "A variável \$? armazena o valor de retorno do ultimo comando que foi executado: $?"
echo
