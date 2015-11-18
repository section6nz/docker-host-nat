FROM alpine:latest
COPY proxy /proxy
RUN chmod +x /proxy
RUN apk update && apk add iptables
CMD /bin/sh /proxy
