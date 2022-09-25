#!/bin/bash

POOL=pool.woolypooly.com:3113
WALLET=kaspa:3GNvCSTXoKoVqWMX2QzMiQnfRPzNQzzXh7

./lolMiner --algo KASPA --pool $POOL --user $WALLET $@

