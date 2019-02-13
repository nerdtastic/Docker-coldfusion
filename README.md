### Install Docker
<a href="https://docs.docker.com/install/" target="_blank">Docker</a>

### Clone this repo
`git clone https://github.com/nerdtastic/Docker-coldfusion.git coldfusion`<br />
`cd coldfusion`

### Installation Media
The linux coldfusion installation media is needed and can be downloaded from https://www.adobe.com/products/coldfusion/download-trial/try.html.

Place the installation media in `coldfusion/build/assets`

### Create External Docker Volumes
Do this after installing docker and before the first run of docker-sync.<br />
`docker volume create coldfusion`

### Edit www root
Set the wwwroot to be shared from your local machine to the docker-sync container here `coldfusion/docker-compose.yml`.
`services:
	volumes:
		hostsource:guestmachinehost:cached`

### Build/Run
Build the coldfusion container<br />
`docker-compose build`<br />
Start the coldfusion container.<br />
`docker-compose up`

### Admin interface
`http://localhost:8500/CFIDE/administrator/index.cfm`<br />
You'll have to guess the password. Its a really obvious terrible <strong>password</strong>, promise :)