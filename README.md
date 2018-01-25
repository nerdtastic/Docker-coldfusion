# coldfusion-docker
ColdFusion server  using docker compose.

## Installation Media
The linux installation media is needed and can be downloaded from https://www.adobe.com/products/coldfusion/download-trial/try.html and placed in the assets folder. The Dockerfile is looking for ColdFusion_2016_WWEJ_linux64.bin. Docker-compose is expecting the root www directory to be located here: `/Library/WebServer/Documents/www/gvsu/`

### Build
`docker build . -t coldfusion:latest`

### Build and Run
`docker-compose up -d cold`

### Admin interface
`http://localhost/CFIDE/administrator/index.cfm`

### Coldfusion Setup
Coldfusion required going to the admin once after installation to complete. Coldfusion settings can be edited or using a <a href="https://helpx.adobe.com/coldfusion/configuring-administering/deploying-coldfusion-applications.html" target="_blank">.car</a> file to import settings from a previous coldfusion installation.