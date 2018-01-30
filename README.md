## Installation Media
The linux installation media is needed and can be downloaded from https://www.adobe.com/products/coldfusion/download-trial/try.html and placed in the assets folder. The Dockerfile is looking for ColdFusion_2016_WWEJ_linux64.bin. Docker-compose is expecting the root www directory to be located here: `/Library/WebServer/Documents/www/gvsu/`. If you want to change this edit syncs:www-sync:src on the docker-sync.yml file to whatever fits your needs. The more things you have in this directory the longer the first run will take. You might want to export any current coldfusion settings and put the file in your webroot.

### Install Docker-sync
`gem install docker-sync`

### Create External Docker Volumes
Do this after install docker and before the first run of docker-syn
`docker volume create coldfusion`
`docker volume create www-sync`

### Build/Run
Start the file syncing container AND Start the coldfusion container
`docker-sync start` `docker-compose up`
OR
Start everything
`docker-sync-stack start`

### Admin interface
`http://localhost/CFIDE/administrator/index.cfm`