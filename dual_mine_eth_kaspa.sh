#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=tls://eu1.ethermine.org:5555
ETHWALLET=3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7
ETHWORKER=lolMinerETH

KASWORKER=lolMinerKaspa
KASPOOL1=ca.acc-pool.pw:16064
KASWALLET1=kaspa:3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7
KASPOOL2=ru.acc-pool.pw:16064
KASWALLET2=kaspa:3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --worker $ETHWORKER --dualmode KASPADUAL --dualpool $KASPOOL1 --dualuser $KASWALLET1 --dualpool $KASPOOL2 --dualuser $KASWALLET2 --dualworker $KASWORKER --max-latency 0,100  $ $@
