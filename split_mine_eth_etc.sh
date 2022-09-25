#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7.lolMinerWorker

ETCPOOL=etc.2miners.com:1010
ETCWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode ETCHASH --dualpool $ETCPOOL --dualuser $ETCWALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode ETCHASH --dualpool $ETCPOOL --dualuser $ETCWALLET $@
done
