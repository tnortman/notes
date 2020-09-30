#!/bin/bash

echo $1
echo $2
echo $3
depcruise --max-depth=1 --focus "$3" -x "node_modules" --output-type dot $1 | dot -T png > ~/MBDev/local/dep-charts/$2/$3.png