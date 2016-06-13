FROM alpine:3.4
# Alternative
# FROM mhart/alpine-node
MAINTAINER rguitter@gmail.com
LABEL version="latest" \
      description="Base image for nodejs application."

ENV VERSION=6.2.0-r0

RUN apk update && \
    apk add --no-cache nodejs=${VERSION}

ENTRYPOINT ["node"]
CMD ["--version"]
