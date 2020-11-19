#!/bin/bash

apt update && apt install docker-compose docker.io git

wget -O peers.txt https://raw.githubusercontent.com/MinaProtocol/coda-automation/master/terraform/testnets/turbo-pickles/peers.txt

echo "$1" > keys/my_wallet.pub
echo "$2" > keys/my_wallet

docker-compose run stopper-config yq w -i /config/stopper.yml WORKER_PUBLIC_KEY ${PUBLIC_KEY}
docker-compose run stopper-config yq w -i /config/stopper.yml WORKER_FEE ${WORKER_FEE}

echo $1
echo $3
echo $4

PUBLIC_KEY=$1 PASSWORD=$3 WORKER_FEE=$4 docker-compose up daemon

