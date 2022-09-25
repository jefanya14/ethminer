#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=stratum.pool-node.com:8020
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo UBQHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo UBQHASH --pool $POOL --user $WALLET $@
done
