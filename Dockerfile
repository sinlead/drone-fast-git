FROM alpine:3.9

LABEL maintainer Wabilin <twelendil@protonmail.com>

RUN apk --update add git openssh bash && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

COPY git-cache /bin/
CMD git-cache
