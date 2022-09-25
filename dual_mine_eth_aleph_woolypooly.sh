#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

ALEPHPOOL=pool.woolypooly.com:3106
ALEPHWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode ALEPHDUAL --dualpool $ALEPHPOOL --dualuser $ALEPHWALLET --worker lolMinerWork $@
