#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=etc.2miners.com:1010
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETCHASH --pool $POOL --user $WALLET $@
