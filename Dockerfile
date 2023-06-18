FROM centos:7
MAINTAINER abc@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/honey.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip honey.zip
RUN cp -rvf honey-html/* .
RUN rm -rf honey-html honey.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443
