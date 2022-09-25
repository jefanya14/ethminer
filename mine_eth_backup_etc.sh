#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

WORKER=lolMinerWorkerEth

ETCPOOL=eu1-etc.ethermine.org:4444
ETCWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --pool etc:$ETCPOOL --user $ETHWALLET --user $ETCWALLET --worker $WORKER  $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $ETHPOOL --pool etc:$ETCPOOL --user $ETHWALLET --user $ETCWALLET --worker $WORKER  $@
done
