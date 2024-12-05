#!/bin/sh
echo "
Script to port knocking
 call
     $0 __domain_or_ip_knock___    __domain_or_ip_enter__
     $0  website.com                web_key_name_config_file

REF: https://askubuntu.com/questions/867261/ssh-client-port-knocking-execute-command-before-connecting
REF https://help.ubuntu.com/community/PortKnocking#Client_Side

"
knock -v "$1" 7000 8000 9000
# ssh -vvv "$2"
ssh "$2"
