Forked from [vinelab/crossbar](https://github.com/Vinelab/docker-crossbar) and ported to use the standard Python2.7 docker image

# Docker-[ ]-Crossbar
Run a [Crossbar router](http://crossbar.io) using Docker.

###### `easen/crossbar.io	`

## Usage
The default configuration is a simple websocket server running on port `8000` with a realm `realm`

To try it out run `docker run -d -p 3000:8000 easen/crossbar.io` and connect to it using a [client implementation](http://wamp.ws/implementations) of your choice.

### Custom Config
To run crossbar using your own config or additional files simply mount them to `/.crossbar/` as such

* `docker run -d -p 3000:8000 -v /path/to/config.json:/.crossbar/config.json easen/crossbar.io`

* or the whole `.crossbar` directory `docker run -d -p 3000:8000 -v /path/to/.crossbar:/.crossbar easen/crossbar.io`
