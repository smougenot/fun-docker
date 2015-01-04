FROM ubuntu:trusty
MAINTAINER sylvain.mougenot@gmail.com

# download and install java
RUN apt-get update 
RUN apt-get install -y --no-install-recommends \
	  cowsay

ENTRYPOINT ["/usr/games/cowsay"]
CMD ["hello"]