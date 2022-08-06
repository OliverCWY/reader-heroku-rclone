FROM debian:10

ADD start.sh /start.sh

RUN apt update && apt-get install wget curl unzip -y \
 && chmod +x /start.sh \
 && wget https://github.com/hectorqin/reader/releases/download/v2.6.0-beta/reader-2.5.7.jar

CMD exec /start.sh