# syntax = docker/dockerfile:1

FROM ubuntu:20.04
WORKDIR /
COPY . .
RUN apt-get update
CMD ["bash", "./scripts/build.sh"]
ENTRYPOINT ["./release/bin"]
