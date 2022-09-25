#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth.2miners.com:2020
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7
WORKER=WORKER1

DUALPOOL=eu1.ethermine.org:4444
DUALWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7
DUALWORKER=WORKER2

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET --worker $WORKER --dualmode SPLIT-40.5 --dualpool $DUALPOOL --dualuser $DUALWALLET --dualworker $DUALWORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET --worker $WORKER --dualmode SPLIT-40.5 --dualpool $DUALPOOL --dualuser $DUALWALLET --dualworker $DUALWORKER $@
done
