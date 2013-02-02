#!/bin/bash

case "$1" in

"add")
  grep "$2" /etc/hosts || echo " 127.0.0.1 $2" >> /etc/hosts
;;
"remove")
  grep "$2" /etc/hosts && sed -i "/$2/d" /etc/hosts
;;
"on")
  sed -i "s/#/ /g" /etc/hosts
;;
"off")
  sed -i "s/^ /#/" /etc/hosts
;;
*)
  echo 'Usage: $0 ( (add | remove) some.fqdn | (on | off) ) 
esac
