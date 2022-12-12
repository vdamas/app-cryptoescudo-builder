!#/bin/bash

cd /workspace
git clone https://github.com/LedgerHQ/ledger-app-builder
cd ledger-app-builder
docker build -t ledger-app-builder:latest .
ID=$(docker images -q ledger-app-builder)

cd /workspace
git clone https://github.com/vdamas/app-cryptoescudo
cd /workspace/app-cryptoescudo

docker run --rm -ti -v "$(realpath .):/app" $ID make

cd /workspace
dt=$(date '+%Y%m%d%H%M')
tar -zcvf "app-cryptoescudo-$dt.gz" ./app-cryptoescudo/bin
