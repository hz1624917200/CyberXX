FROM nbsantos/dvwa
LABEL maintainer=zheng

# copy files
COPY --chown=www-data:www-data vulnerabilities/ /var/www/html/vulnerabilities/

# configure filebeat
ADD ./filebeat-7.17.0-arm64.deb /root/
RUN dpkg -i ~/filebeat-7.17.0-arm64.deb
RUN rm ~/filebeat-7.17.0-arm64.deb
# use mapping
# COPY filebeat_http.yml /etc/filebeat/ 

# config apache2 settings
RUN echo "ServerName zraspberrypi" >> /etc/apache2/apache2.conf
# RUN ["a2enmod", "dump_io"]
# RUN echo "ServerName zraspberrypi\nDumpIOInput ON\nLogLevel dumpio:trace7" >> /etc/apache2/apache2.conf

CMD ["/start.sh"] 
