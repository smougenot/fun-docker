[Docker](http://www.docker.com/) container for fun

Docker: `docker pull smougenot/fun-docker`

Simply demo what can be done with docker
Not a big deal but used as BBL sample

# get the fun stuff
cd /opt
git clone https://github.com/smougenot/fun-docker.git
docker build --rm -t fun fun-docker/

# play with it
docker run --rm --name fun fun
docker run --rm --name fun fun the cow said hello
docker run --rm --name fun fun -l
docker run --rm --name fun fun -f ghostbusters hello
docker run --rm --name fun --entrypoint "/usr/games/sl" -ti fun
docker run --rm --name fun --entrypoint "/usr/bin/cmatrix" -ti fun
docker run --rm --name fun --entrypoint "telnet" -ti fun towel.blinkenlights.nl 
