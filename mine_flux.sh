#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eu-flux.fluxpools.net:7001
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7.testWorker	

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo FLUX --pool $POOL --user $WALLET $@
