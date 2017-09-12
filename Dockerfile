FROM alpine:3.1
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY postgresql.conf /etc/conf.d/postgresql
COPY start-postgres /
RUN apk update && \
    apk add postgresql bash && \
    mkdir -p /var/lib/postgresql/9.4/data/ && \
    chmod -R 0700 /var/lib/postgresql/9.4/data/ && \
    chown -R postgres:postgres /var/lib/postgresql/9.4/data/ && \
    su postgres -c '/usr/bin/initdb /var/lib/postgresql/9.4/data/' && \
    echo "host all all 0.0.0.0/0 trust" >> /var/lib/postgresql/9.4/data/pg_hba.conf
EXPOSE 5432
ENTRYPOINT ["/start-postgres"]
