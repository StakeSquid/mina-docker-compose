#!/bin/bash

apt update && apt install git -y

git clone https://github.com/StakeSquid/mina-docker-compose.git

cd mina

./install.sh $1 $2 $3 $4
