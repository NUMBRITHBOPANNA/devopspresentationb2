FROM ubuntu
RUN apt-get update
RUN apt install -y tzdata
ENV TZ=Asia/Dubai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name DEVOPS SKILLRARY
EXPOSE 8080:8080