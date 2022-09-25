#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ctxc.2miners.com:2222
WALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --coin CTXC --pool $POOL --user $WALLET $@
