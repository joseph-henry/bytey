FROM debian:bullseye as stage

RUN apt-get -qq update && apt-get -qq install make clang gcc
COPY . .
RUN /usr/bin/make

FROM debian:bullseye
COPY --from=stage /bytey /usr/sbin
CMD []
ENTRYPOINT ["/usr/sbin/bytey"]
