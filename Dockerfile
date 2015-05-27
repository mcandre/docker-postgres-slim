FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD postgresql.conf /etc/conf.d/postgresql
RUN apk update && \
    apk add postgresql && \
    mkdir -p /var/lib/postgresql/9.3/data/ && \
		chmod -R 0700 /var/lib/postgresql/9.3/data/ && \
		chown -R postgres:postgres /var/lib/postgresql/9.3/data/ && \
    su postgres -c '/usr/bin/initdb /var/lib/postgresql/9.3/data/' && \
    echo "host all all 0.0.0.0/0 trust" >> /var/lib/postgresql/9.3/data/pg_hba.conf
EXPOSE 5432
ENTRYPOINT su postgres -c '/usr/bin/postgres -D /var/lib/postgresql/9.3/data -c config_file=/etc/conf.d/postgresql'
