docker.io - Spopd spotify server
=====================================

Simple docker with spopd daemon to listen to spotify


Configure it
------------

Edit the `spopd.conf` to fit your needs. You need to at least enter your Spotify details.
For complete configuration options, see http://docs.mopidy.com/en/latest/config/


Pull the image it
--------

`docker pull mib4fun/spopd-spotify`


Run it
------

Replace the variables

```bash
USERNAME=$1
PASSWORD=$2

docker run \
     -p 6602:6602 \
     -e USERNAME=$USERNAME \
     -e PASSWORD=$PASSWORD \
      mib4fun/modipy-spotify
```


Or build it
------------

```bash
git clone https://github.com/mib4fun/docker-spopd-spotify
cd docker-spopd-spotify
docker build -t . spopd-spotify
```


Ports
-----

* `6602` - Communication server
