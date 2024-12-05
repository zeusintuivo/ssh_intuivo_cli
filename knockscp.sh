#!/bin/sh
echo "
Script to port knocking
 call
     $0 __domain_or_ip_knock___    __domain_or_ip_enter__        ___from_file_path____  __to_remote_location__
     $0  website.com                web_key_name_config_file     /localhost/file.py      /home/servlive.com/server/file.py

REF: https://askubuntu.com/questions/867261/ssh-client-port-knocking-execute-command-before-connecting
REF https://help.ubuntu.com/community/PortKnocking#Client_Side

"
if [ ${#} -lt 4 ] ;  then
{
  echo "error Expecting 4 params"
  exit 1
}
fi
if [ ! -e "${3}" ] ; then
{
	echo "error local File ${3} cannot be found"
	exit 1
}
fi

knock -v "$1" 7000 8000 9000
if [ -d "${3}" ] ; then
{
  scp -vvvr "$3" "$2:$4"
}
else
{
  scp -vvv "$3" "$2:$4"
}
fi
