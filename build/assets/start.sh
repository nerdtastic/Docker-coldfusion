#!/bin/bash

/usr/sbin/httpd -k start
echo 'Apache started'

/opt/coldfusion2016/cfusion/bin/coldfusion start

echo 'The ColdFusion 2016 server is started.'


tail -f /dev/null
