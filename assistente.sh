#!/bin/bash
java -version
if [ $? -eq 0 ];
then
        echo "java instalado"
        cd Java-Jar
        if [ $? -eq 0 ];
        then
                java -jar projeto-individual-1.0-SNAPSHOT.jar
        fi
else
        echo "java não instalado"
        sudo apt install zip
        curl -s "https://get.sdkman.io" | bash
        source "/home/ubuntu/.sdkman/bin/sdkman-init.sh"
        sdk install java 17.0.5-amzn
        echo "java instalado"
        sleep 3
        echo "Iniciando aplicação"
        java -jar projeto-individual-1.0-SNAPSHOT.jar
fi