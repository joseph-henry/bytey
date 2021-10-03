FROM ubuntu:20.04 as stage

RUN apt-get update -qq && apt-get -qq install make clang
COPY . .
RUN /usr/bin/make
RUN echo $PWD
RUN echo $PWD
RUN ls -la .

FROM ubuntu:20.04

COPY --from=stage /bytey /usr/sbin

CMD []
ENTRYPOINT ["/usr/sbin/bytey"]
