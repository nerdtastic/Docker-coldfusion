# coldfusion-docker
ColdFusion server  using docker compose.  Swarm mode will work too just not with windows. There is a problem with the path and the shared volume.

## Installation Media
The linux installation media is needed and can be downloaded from https://www.adobe.com/products/coldfusion/download-trial/try.html and placed in the assets folder. The Dockerfile is looking for ColdFusion_2016_WWEJ_linux64.bin.

### Build
`docker build . -t coldfusion:latest`

### Run
`docker-compose up -d cold`
or
`docker run -d -p 80:80 -p 8500:8500 -v coldfusion:/opt/coldfusion2016 -v /path/to/local/wwwroot:/www/gvsu/ coldfusion`
This will create two volumes: one is a container volume (coldfusion) that will persist data between docker and workstation restarts, the second mounts the host file system to in the httpd document root.

### Admin interface
`http://127.0.0.1/CFIDE/administrator/index.cfm`

