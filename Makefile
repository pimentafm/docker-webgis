# Build a docker image based on fedora rawhide with apache and mapserver
BUILDNAME=mapserver
BUILDTAG=v7.4.3

CONTAINERNAME=mapserver

mapserver-image:
	docker build -t "$(BUILDNAME):$(BUILDTAG)" -f mapserver/Dockerfile .

mapserver-container:
	docker run --name $(CONTAINERNAME) --privileged=true -d -p 8081:80 -v $(shell pwd)/geodb:/var/www/geodb:rw $(BUILDNAME):$(BUILDTAG)
