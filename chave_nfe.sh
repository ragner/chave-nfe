#!/bin/bash
#
# Descreve como é formada a chave de acesso da NF-e
#
# Ragner Nacimento Magalhaes

CHAVE=$1

if test -z "$CHAVE"
then
	echo "$0 <Chave de acesso da NF-e>"
	exit 1
fi

if test -n "$(echo -n $CHAVE | tr -d '[0-9]')" 
then
	echo "Chave de acesso inválida, use apenas números!"
	exit 2

fi

if test $(echo -n $CHAVE | wc -c) -ne 44
then
	echo "Chave de acesso inválida, não contém 44 caracteres!"
	exit 3
fi

echo -e "Código do Estado: \t ${CHAVE:0:2}"
echo -e "Ano/mês emissão: \t ${CHAVE:2:4}"
echo -e "CNPJ   emissor: \t ${CHAVE:6:14}"
echo -e "Modelo da NF-e: \t ${CHAVE:20:2}"
echo -e "Série da  NF-e: \t ${CHAVE:22:3}"
echo -e "Número da NF-e: \t ${CHAVE:25:9}"
echo -e "Código da NF-e: \t ${CHAVE:34:9}"
echo -e "Dígito Vefificador: \t ${CHAVE:43:1}"

