FROM anapsix/alpine-java:8_server-jre_unlimited

RUN apk add curl

WORKDIR /golang-mirgate

RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v3.5.2/migrate.linux-amd64.tar.gz \
  && tar -xzf migrate.linux-amd64.tar.gz \
  && rm migrate.linux-amd64.tar.gz \
  && mv migrate.linux-amd64 migrate \
  && ln -s /golang-mirgate/migrate /usr/local/bin/migrate && chmod +x /golang-mirgate/migrate
  
