#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11

echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Olá, serei seu assistente para instalação do Java!;"
echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Verificando aqui se você possui o Java instalado...;"
sleep 2

java -version
if [ $? -eq 0 ];
then
	echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Você já tem o java instalado!!!"
	if [ $? -eq 0 ];
	then
		java -jar projeto-individual-1.0-SNAPSHOT-jar-with-dependencies.jar	
	fi
else
	echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Não foi identificado nenhuma versão do Java instalado"
	echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Você deseja instalar o Java (S/N)?"
	read inst
	if [ \"$inst\" == \"S\" ]
	then
		echo "Instalando o Java!"
		sleep 2
		sudo apt install openjdk-17-jre -y
	        if [ $? -eq 0 ];
                then

                echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Iniciando aplicação"
                        java -jar projeto-individual-1.0-SNAPSHOT-jar-with-dependencies.jar
                
		fi
        	echo "O java foi instalado com sucesso!"
		clear

	else 	
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
	fi
fi