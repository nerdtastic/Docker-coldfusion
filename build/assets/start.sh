#!/bin/bash

/usr/sbin/httpd -k restart
echo 'Apache started'
/opt/coldfusion2016/cfusion/bin/coldfusion restart

tail -f /opt/coldfusion2016/cfusion/logs/coldfusion-out.log
