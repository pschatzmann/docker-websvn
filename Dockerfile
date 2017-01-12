FROM php:5.6-alpine
MAINTAINER Phil Schatzmann <pschatzmann@gmail.com>
RUN apk --update add subversion 
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN svn export --username guest --password "" http://websvn.tigris.org/svn/websvn/trunk/ 
RUN cp -r /var/www/html/trunk/* /var/www/html
RUN rm -rf /var/www/html/trunk
COPY config.php /var/www/html/include/
EXPOSE 80
VOLUME /var/www/html/include
CMD php -S 0.0.0.0:80
