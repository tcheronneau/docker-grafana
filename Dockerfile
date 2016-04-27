FROM bouille57/basebian:latest
MAINTAINER Thomas <thomas@mcth.fr>
RUN apt-get install curl -y 
RUN echo "deb https://packagecloud.io/grafana/testing/debian/ wheezy main" > /etc/apt/sources.list.d/grafana.list
RUN curl https://packagecloud.io/gpg.key | apt-key add -
RUN apt-get install -y apt-transport-https
RUN apt-get update 
RUN apt-get install -y grafana
COPY grafana.conf /etc/supervisor/conf.d/10-grafana.conf

EXPOSE 3000
