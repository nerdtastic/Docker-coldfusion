#!/bin/bash

/usr/sbin/httpd -k stop
echo 'Apache stopped'
/opt/coldfusion2018/cfusion/bin/coldfusion stop
echo 'Coldfusion 2018 stopped'

/usr/sbin/httpd -k start
echo 'Apache started'
/opt/coldfusion2018/cfusion/bin/coldfusion start
echo 'Coldfusion 2018 started'

/usr/sbin/httpd -k start

tail -f /opt/coldfusion2018/cfusion/logs/coldfusion-out.log