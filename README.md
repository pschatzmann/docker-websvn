This is a very lean docker image for http://www.websvn.info which is based on php:5.6-alpine and only uses 59.1 MB.

You need to provide the SVN repository with the "repository" environment variable or define a custom "config.php" which needs to be placed into the mapped " /var/www/html/include/" directory.

The php-server runs on port 80.

Example Docker Compose file:

    version: '2'
    services:
      websvn:
        image: pschatzmann/websvn
        container_name: websvn
        ports:
            - "8003:80"
        environment:
            - repository=svn://10.0.1.20/main
        restart: always
