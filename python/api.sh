#!/bin/bash

#
# api.sh - Consulta status http de página web digitada
#
# Site:       https://youtube.com/user/SuperDeivid22
# Autor:      Deivid Duarte
# Manutenção: Deivid Duarte
#
# ------------------------------------------------------------------------ #
#  Este programa irá consultar o status http de página web
#
#  Exemplos:
#      $ ./api.sh
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 22/03/2022, Deivid:
#       - Criado primeiro código com cores
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ------------------------------ #
VERDE="\033[32;1m"
CIANO="\033[36;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES --------------------------------- #
[ ! -x "$(which curl)" ] && sudo apt install curl -y # curl instalado?

 
# ------------------------------- EXECUCAO ------------------------------- #
echo Digite a url:
read URL
STATUS=$(curl -I $URL | sed "2,40d" | cut -c10-13)


if [ "$STATUS" -eq 200 ]; then
  echo "ok"
else
  echo "Erro codigo "$STATUS""
fi
