#!/bin/sh
sudo mkdir -p ./es1/data ./es1/data/nodes
sudo mkdir -p ./es2/data ./es2/data/nodes

sudo chmod -R g+rwx ./es1/data
sudo chgrp 1000 ./es1/data

sudo chmod -R g+rwx ./es2/data
sudo chgrp 1000 ./es2/data
