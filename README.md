# docker-webgis
## Tools for GIS-based systems web development

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/pimentafm/docker-webgis?color=darkgreen">

  <a href="https://github.com/pimentafm">
    <img alt="Made by Fernando Pimenta" src="https://img.shields.io/badge/made%20by-Fernando%20Pimenta-darkblue">
  </a>

  <img alt="License" src="https://img.shields.io/badge/license-MIT-blue">
</p>


## Build image

Create a Dockerfile with
```
 FROM fernandompimenta/mapserver:v7.4.3
```
and run the following command
```
docker build -f Dockerfile .
```

## Start container
```
docker run --name [container name] --privileged=true -d -p [exposed port]:[internal port] -v [host-path]:[container-path] fernandompimenta/mapserver:v7.4.3
```

Example:
```
docker run --name mapserver --privileged=true -d -p 8081:80 -v $PWD/geodb:/var/www/geodb:rw docker.io/fernandompimenta/mapserver:v7.4.3
``` 

## Access container via http
When Docker is forwarded as _localhost_ open the following URL: `http://localhost:8081/cgi-bin/mapserver.fcgi`

If it works, the web browser must response:<br/>
`No query information to decode. QUERY_STRING is set, but empty.`

 * [MapServer](https://mapserver.org/)


Fernando Pimenta [My Github!](https://github.com/pimentafm)