FROM alpine

RUN apk add --no-cache curl

COPY wait-for /
RUN chmod +x /wait-for

ENTRYPOINT [ "/wait-for" ]