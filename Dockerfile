FROM busybox:ubuntu-14.04
MAINTAINER Esteban Ruperti <e@ruperti.com>
ADD https://dl.ngrok.com/ngrok_2.0.19_linux_amd64.zip /
RUN unzip ngrok.zip -d /bin && \
  rm -f ngrok.zip && \
  touch /.ngrok
CMD /bin/ngrok -config /.ngrok -log stdout $HTTP_PORT
