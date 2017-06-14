# docker-postgres-slim - a slim Docker container running a continuous PostgreSQL server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-postgres-slim/

# ABOUT

docker-postgres-slim is a container for running a PostgreSQL server, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [alpine](https://registry.hub.docker.com/_/alpine/).

# EXAMPLE

```
docker exec 820fe27a5d6208483aaeb2417227dad263c68041abd3e3cbadb0a3efdd977f1d psql --version
psql (PostgreSQL) 9.3.7
docker exec 820fe27a5d6208483aaeb2417227dad263c68041abd3e3cbadb0a3efdd977f1d psql -h $(docker-machine ip default) -U postgres -c "SELECT 'Hello World!';"
   ?column?
--------------
 Hello World!
(1 row)

docker images | grep mcandre/docker-postgres-slim:latest | awk '{ print $(NF-1), $NF }'
7.79 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
