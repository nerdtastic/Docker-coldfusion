## Installation Media
The linux installation media is needed and can be downloaded from https://www.adobe.com/products/coldfusion/download-trial/try.html and placed in the assets folder. The Dockerfile is looking for ColdFusion_2016_WWEJ_linux64.bin. Docker-sync is expecting the root www directory to be located here: `/Users/thomaspikes/Documents/Work/webroot/gvsu`. You're going to want to change that to match your wwwroot path. Edit `syncs:www-sync:src` on the docker-sync.yml file to whatever fits your needs. The more things you have in the www root directory the longer the first run will take. You might want to export any current coldfusion settings and put the file in your webroot.

### Install Docker-sync
`gem install docker-sync`

### Create External Docker Volumes
Do this after installing docker and before the first run of docker-sync<br />
`docker volume create coldfusion`<br />
`docker volume create www-sync`

### Edit www root
Set the wwwroot to be shared from your local machine to the docker container<br />
`syncs:
	www-sync:
		yoursource`
### Build/Run
Start the file syncing container AND Start the coldfusion container<br />
`docker-sync start`<br />
`docker-compose up`<br />
OR Start everything<br />
`docker-sync-stack start`

### Admin interface
`http://localhost/CFIDE/administrator/index.cfm`