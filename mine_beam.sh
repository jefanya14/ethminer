#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=beam.sunpool.top:3334
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --coin BEAM --pool $POOL --user $WALLET $@
