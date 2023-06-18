FROM centos:7
MAINTAINER abc@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/chain-app-dev.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip chain-app-dev.zip
RUN cp -rvf chain-app-dev/* .
RUN rm -rf chain-app-dev chain-app-dev.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443
