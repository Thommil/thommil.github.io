FROM alpine:latest

ENV HUGO_VERSION=0.118.2

#ENV http_proxy=172.17.0.1:3128
#ENV https_proxy=172.17.0.1:3128

RUN apk add --no-cache --update wget \
 && wget --no-check-certificate https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
 && tar zxvf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
 && mv hugo /usr/local/bin/hugo \
 && rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz\
 && chmod +x /usr/local/bin/hugo

RUN adduser hugo -H -D -s /bin/false

WORKDIR /data
ADD static/ .

EXPOSE 1313

ENTRYPOINT ["/usr/local/bin/hugo" ,"server", "-w", "--bind=0.0.0.0", "--baseUrl=https://thommil.github.io", "--appendPort=false"]
