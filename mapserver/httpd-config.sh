#!/bin/bash

echo "
ServerName mapserver" >> /etc/httpd/conf/httpd.conf

echo "
<Directory /tmp/>
    AllowOverride all
    Require all granted
</Directory>" >> /etc/httpd/conf/httpd.conf 
 
echo '
Alias /tmp/ "/tmp/"' >> /etc/httpd/conf/httpd.conf 
