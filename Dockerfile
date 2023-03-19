FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git rsync

RUN chmod +x entrypoint.sh
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
