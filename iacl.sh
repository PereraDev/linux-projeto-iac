#!/bin/bash

echo "Criando diretórios ..."

mkdir /publico
mkdir /security
mkdir /front-end
mkdir /back-end

echo "Criando grupos de usuários ..."

groupadd GRP_SEC
groupadd GRP_FRO
groupadd GRP_BAC

echo "Criando usuários e colocando nos grupos ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_FRO
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_FRO
useradd roberta -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_FRO

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_BAC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_BAC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_BAC

echo "Especificando permissões dos diretórios ..."

chown root:GRP_SEC /security
chown root:GRP_FRO /front-end
chown root:GRP_BAC /back-end

chmod 770 /security
chmod 770 /front-end
chmod 770 /back-end
chmod 777 /publico

echo "Finalizado ..."


