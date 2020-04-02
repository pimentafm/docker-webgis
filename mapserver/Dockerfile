FROM fedora:rawhide

LABEL maintainer="Fernando Pimenta <fernando.m.pimenta@gmail.com>"

WORKDIR /var/www

RUN dnf -y update && dnf -y install httpd mod_fcgid mapserver && dnf clean all

RUN ["cp", "/usr/bin/mapserv", "/var/www/cgi-bin/mapserv.fcgi"]

ADD mapserver/httpd-config.sh /var/www/httpd-conf.sh

RUN chmod +x httpd-conf.sh && ./httpd-conf.sh

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
