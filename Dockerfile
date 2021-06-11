FROM ubuntu:18.04
MAINTAINER some-peroxide <jbd3yie8qd9kg3@gmail.com>

#이거 않하면 지역 선택 뭐시기 뜸
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 # Install Apache web server (Only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php	#For Installing PHP5.6
RUN apt-get update
RUN apt-get install -y php5.6

#PHP & MySQL 연결
RUN apt-get install -y php5.6-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
