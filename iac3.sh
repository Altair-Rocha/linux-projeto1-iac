#!/bin/bash

echo "Criando diretórios..."

#mkdir /publico1
#mkdir /adm1
#mkdir /ven1
#mkdir /sec1

echo "Criando Grupos de Usuários..."

#groupadd GRP_ADM1
#groupadd GRP_VEN1
#groupadd GRP_SEC1

echo "Criando Usuários..."

useradd carla -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM1
useradd marina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM1

#useradd michele -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN1
#useradd sebatiao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN1

#useradd jose -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC1
#useradd roberval -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC1

echo "Especificando Permissões aos diretórios..."

chown root:GRP_ADM /adm1  
chown root:GRP_VEN /ven1
chown root:GRP_SEC /sec1

 

chmod  770 /adm1
chmod  770 /ven1
chmod  770 /sec1
chmod  777 /publico1

echo "Fim..."
