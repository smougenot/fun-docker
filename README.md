[Docker](http://www.docker.com/) container for fun
> Based on an original idea from [@dgageot](https://twitter.com/dgageot)
> Once upon a time @ [LyonJUG](http://www.lyonjug.org/evenements/docker)

Docker: `docker pull smougenot/fun-docker`


----------

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/smougenot/fun-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


Demonstrate what can be done with a Docker container
Not a big deal but used as BBL handson 
The subject is to try some fun commands

  -  cowsay
  -  the apt-get easter egg 
  -  fsome steam locomotive
  -  the cmatrix
  -  whatch Star Wars

> If you know some others, you can provide a pull request
> Most of the fun was found [here](http://www.binarytides.com/linux-fun-commands/)

----------

# Getting started #
If you do not have a vm to use docker you can use [Vultr](http://www.vultr.com/?ref=6811816).
You can find a startup script in the github repo to set the required tools on a centos 7 vm. 

## Try it yourself with the sources ##
```
# get the fun stuff
cd /opt
git clone https://github.com/smougenot/fun-docker.git
docker build --rm -t fun fun-docker/
```
## Run the fun ##
```
# play with it
docker run --rm --name fun fun
docker run --rm --name fun fun the cow said hello
docker run --rm --name fun fun -l
docker run --rm --name fun fun -f ghostbusters hello
docker run --rm --entrypoint "apt-get" -ti fun moo

docker run --rm --name fun --entrypoint "/usr/games/sl" -ti fun
docker run --rm --name fun --entrypoint "/usr/bin/cmatrix" -ti fun
docker run --rm --name fun --entrypoint "telnet" -ti fun towel.blinkenlights.nl 
```