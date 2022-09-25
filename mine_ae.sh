#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ae.2miners.com:4040
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a C29AE --pool $POOL --user $WALLET $@
