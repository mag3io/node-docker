FROM alpine:edge
# Alternative
# FROM mhart/alpine-node
MAINTAINER rguitter@gmail.com
LABEL version="0.1" \
      description="Base image for nodejs application."

ENV VERSION=6.5.0-r0

RUN apk update && \
    apk add --no-cache nodejs=${VERSION}

ENTRYPOINT ["node"]
CMD ["--version"]
