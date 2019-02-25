FROM alpine:3.9

ENV DOCKER_VERSION 18.06.3

COPY --from=docker:18.06.3 /usr/local/bin/docker /usr/local/bin/docker
RUN apk --update --no-cache add bash vim 

COPY ./docker-gc /docker-gc

VOLUME /var/lib/docker-gc

CMD ["/docker-gc"]
