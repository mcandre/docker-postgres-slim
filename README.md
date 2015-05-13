# docker-postgres-slim - a slim Docker container running a continuous PostgreSQL server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-postgres-slim/

# ABOUT

docker-postgres-slim is a container for running a PostgreSQL server, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [alpine](https://registry.hub.docker.com/_/alpine/).

# EXAMPLE

```
$ make
docker exec 990240288e8b42fe31797b2b56862173a8d67414216a4cb7f50cb981d7bdc3c4 psql -h $(boot2docker ip) -U postgres -c "SELECT 'Hello World!';"
   ?column?
--------------
 Hello World!
(1 row)

docker images | grep mcandre/docker-postgres-slim | awk '{ print $(NF-1), $NF }'
57 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```
