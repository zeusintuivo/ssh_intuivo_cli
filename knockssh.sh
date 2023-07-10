#!/bin/sh
echo "
Script to port knocking
 call
     $0 __domain_or_ip___

REF: https://askubuntu.com/questions/867261/ssh-client-port-knocking-execute-command-before-connecting
REF https://help.ubuntu.com/community/PortKnocking#Client_Side

"
knock -v velotermin.bike 7000 8000 9000
ssh $1

