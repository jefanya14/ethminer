#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=mining.bittube.app:3400
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7
WORKER=testWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a CR29-40 --pool $POOL --user $WALLET --pass $WORKER $@
