#!/bin/sh

if [ ! -f "hotfix-005-303689.jar" ]; then
	curl https://cfdownload.adobe.com/pub/adobe/coldfusion/2016/updates/hotfix-005-303689.jar -o hotfix-005-303689.jar
fi
