#
# Some fun (base on an idea from @dgageot
#
# -> default use cowsay
#  - try -l to list templates
# -> then you can try /usr/games/sl
# -> or watch the first Star Wars over telnet @ towel.blinkenlights.nl
#
FROM ubuntu:trusty
MAINTAINER sylvain.mougenot@gmail.com

# download and install java
RUN apt-get update 
RUN apt-get install -y --no-install-recommends \
	  cowsay sl telnet

ENTRYPOINT ["/usr/games/cowsay"]
CMD ["hello"]
