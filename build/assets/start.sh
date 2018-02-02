#!/bin/bash

/usr/sbin/httpd -k start
echo 'Apache started'
/opt/coldfusion2016/cfusion/bin/coldfusion start

/usr/sbin/httpd -k stop
echo 'Apache stopped'
/opt/coldfusion2016/cfusion/bin/coldfusion stop

/usr/sbin/httpd -k start
echo 'Apache started'
/opt/coldfusion2016/cfusion/bin/coldfusion start

tail -f /dev/null
