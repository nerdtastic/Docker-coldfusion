#!/bin/bash

/usr/sbin/httpd -k restart
echo 'Apache started'
/opt/coldfusion2018/cfusion/bin/coldfusion restart

tail -f /dev/null
