#!/bin/bash
#variáveis
	resposta=42
echo "Menu"
echo "
echo "Seu nome de usuário é: "	#exibe a string que está entre aspas
whoami #exibe o nome do usuário logado
echo "Horário e mais algumas informações do sistema: "
uptime #exibe a hora e algumas informações
echo "O arquivo está sendo executado no diretório: "
pwd	#Mostra o diretório atual
echo "E ai menó, tá afim de criar um usuário diferenciado? Sim ou Sim?"
read opiniao;
if [ $opiniao == "sim" ]; #o espaço é necessário
then
	clear
	echo "Deseja criar um usuário de sistema ou um usuário comum?"
	read tipouser;
	if [ $tipouser == "sistema"]
	then
		clear
		adduser
	else
		clear
		echo "vida que segue então, parça"
	fi

	clear

	echo "É sério que pra você, a música mais foda do mundo é $musica ? Que bosta"
	echo "Mas aperta 1 ai parça, pra seguir o baile..."
	read resp2;
	if test $resp2 == "1";
	then
		clear
		echo "Escolhe uma dessas fita ai, parça:"
		echo "1 - Mostrar a data e a hora dessa porra"
		echo "2 - Ler um poema"
		echo "3 - Assistir Star Wars IV: Uma Nova Esperança"
		read  option;
		if [ $option == "1" ];
		then
			clear
			data=$(date +"%T, %d/%m/%y, %A")
			echo "$data"
		elif [ $option == "2" ];
		then
			clear
			echo "A onda"
			echo "	A onda anda,"
			echo "	Aonde anda a onda?"
			echo "	A onda ainda"
			echo "	ainda onda"
			echo "	ainda anda"
			echo "	aonde?"
			echo "	aonde?"
			echo "	a onda a onda"
			echo "		-Manuel Bandeira"
		elif [ $option == "3" ];
		then
			clear
			telnet towel.blinkenlights.nl
		fi
	fi
else
	clear
	echo "Flw então menó, é nois. Vai pela sombra"
fi
