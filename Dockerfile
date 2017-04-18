FROM alpine:latest
MAINTAINER Lal Krishna reallykrishna@gmail.com

COPY docker-scripts /

RUN \
  chmod +x /script.sh && \
  apk --update add bash iperf gcc musl-dev && \
  gcc membomb.c -o /membomb && \
  gcc forkbomb.c -o /forkbomb && \
  apk del gcc musl-dev&& \
  rm -rf /var/cache/apk/*

EXPOSE 5001
CMD ["help"]
ENTRYPOINT ["/script.sh"]