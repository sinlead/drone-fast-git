FROM --platform=$TARGETPLATFORM docker:git

ARG BUILDPLATFORM
ARG TARGETPLATFORM
ENV CLONE_RETRY=0 RETRY_THRESHOLD=10
LABEL maintainer Wabilin <twelendil@protonmail.com>

RUN apk --update add bash && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

COPY git-cache /bin/
CMD until [[ $CLONE_RETRY -ge $RETRY_THRESHOLD ]]; do /bin/git-cache&&SUCCESS=1&&break; CLONE_RETRY=$[$CLONE_RETRY+1]; sleep 10; done; if [ $SUCCESS = 1 ]; then exit 0; else exit 1; fi

