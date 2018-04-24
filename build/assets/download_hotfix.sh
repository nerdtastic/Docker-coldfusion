#!/bin/sh

if [ ! -f "hotfix-005-303689.jar" ]; then
	curl https://cfdownload.adobe.com/pub/adobe/coldfusion/2016/updates/hotfix-006-308055.jar -o hotfix-006-308055.jar
fi
