FROM alpine

RUN apk --no-cache add curl make

WORKDIR /opt/app

COPY ./ /opt/app

CMD ["/bin/ash", "make run"]