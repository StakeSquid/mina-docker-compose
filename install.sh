#!/bin/bash

apt update && apt install docker-compose docker.io git

mkdir config

cp daemon.json.template config/daemon.json
cp stopper.yml.template config/stopper.yml

wget -O config/peers.txt https://raw.githubusercontent.com/MinaProtocol/coda-automation/master/terraform/testnets/turbo-pickles/peers.txt

mkdir keys

echo "$1" > keys/my_wallet.pub
echo "$2" > keys/my_wallet

chmod 600 keys/my_wallet
chmod 700 keys

PUBLIC_KEY=$1
WORKER_FEE=$4

echo "PUBLIC_KEY=$1" > .env
echo "WORKER_FEE=$4" >> .env
echo "PASSWORD=$3" >> .env

docker-compose run stopper-config yq w -i /config/stopper.yml WORKER_PUBLIC_KEY $PUBLIC_KEY
docker-compose run stopper-config yq w -i /config/stopper.yml WORKER_FEE $WORKER_FEE

docker-compose up -d

