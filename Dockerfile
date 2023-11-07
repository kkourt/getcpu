FROM gcc:bookworm as build
COPY . /usr/src/getcpu/
WORKDIR /usr/src/getcpu
RUN make

FROM docker.io/library/alpine:3.18.4@sha256:eece025e432126ce23f223450a0326fbebde39cdf496a85d8c016293fc851978
COPY --from=build /usr/src/getcpu/getcpu /usr/bin/
ENTRYPOINT ["/usr/bin/getcpu"]
