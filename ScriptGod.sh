#!/bin/bash
clear
echo "Menu"
echo "1 - Criar Usuário"
echo "2 - Remover Usuário"
echo "3 - Assistir Star Wars IV"
read opiniao;
case $opiniao in
"1")
	clear
	echo "Deseja criar um usuário comum:"
	echo "1 - Comum"
	echo "2 - Sistema"
	read tipouser;
	if [ $tipouser == "1" ];
	then
		clear
		echo "Digite o nome dele"
		read nome
		adduser $nome
	else
		clear
		echo "Digite o nome dele"
		read nome
		useradd $nome
	fi
;;
"2")
	clear
	echo "******Removendo Usuário******"
	echo " "
	echo "Digite o nome do usúario que deseja apagar:"
	read nome
	echo "Deseja remover:"
	echo "1 - Remover somente o usuário $nome"
	echo "2 - Remover o diretório home e os arquivos do $nome"
	read pref
	if [ $pref == "1" ];
	then
		clear
		userdel $nome
		clear
		echo "O usuário $nome foi removido com sucesso :)"
	elif [ $pref == "2" ];
	then
		clear
		userdel -r $nome
		clear
		echo "O usuário $nome seu diretório home e seus arquivos foram apagados com sucesso :)"
	fi
;;
"3")
	clear
	telnet towel.blinkenlights.nl
;;
esac
