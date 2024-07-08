#!/bin/bash
####################################
#
# Criando uma máquina virtual pelo Vagrant + External Script
#
####################################

# Atualizando o servidor
echo "Atualizando o servidor..."
sudo apt-get update

# Instalando o Docker Compose
echo "Instalando o Docker Compose..."
sudo apt install -y docker-compose

# Clonando o repositório e navegando até o diretório
echo "Clonando o repositório e navegando até o diretório..."
git clone https://github.com/rafaelmotadasilva/zabbix-docker-compose.git
cd zabbix-docker-compose

# Iniciando os contêineres
echo "Iniciando os contêineres..."
sudo docker-compose up -d

# Exibindo o status dos contêineres
echo "Exibindo o status dos contêineres..."
sudo docker-compose ps

# Fim
echo "Fim..."
