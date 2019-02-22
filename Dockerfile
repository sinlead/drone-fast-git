FROM docker:git

LABEL maintainer Wabilin <twelendil@protonmail.com>

RUN apk --update add bash && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

COPY git-cache /bin/
