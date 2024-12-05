#!/bin/sh
echo "
Script to port knocking
 call
     $0 __domain_or_ip_knock___    __domain_or_ip_enter__       __from_remote_location__    ___to_local_file_path____
     $0  website.com                web_key_name_config_file   /home/serlive.com/file.py   /home/localhost/file.py

REF: https://askubuntu.com/questions/867261/ssh-client-port-knocking-execute-command-before-connecting
REF https://help.ubuntu.com/community/PortKnocking#Client_Side

"
if [ ${#} -lt 4 ] ;  then
{
  echo "error Expecting 4 params"
  exit 1
}
fi
if [ -f "${4}" ] ; then
{
	echo "error local File ${4} already exists choose another location"
	exit 1
}
fi

knock -v "$1" 7000 8000 9000
if [ -d "${4}" ] ; then
{
  scp -vvvr "$2:$3" "$4/"
}
else
{
  scp -vvv "$2:$3" "$4"
}
fi
