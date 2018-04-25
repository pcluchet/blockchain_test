#!/bin/bash

composer archive create --sourceType dir --sourceName . -a tutorial-network@0.0.$1.bna
composer network install --card PeerAdmin@hlfv1 --archiveFile tutorial-network@0.0.$1.bna
composer network upgrade -c PeerAdmin@hlfv1 -n tutorial-network -V 0.0.$1

