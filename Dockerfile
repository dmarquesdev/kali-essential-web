# Docker Kali Linux Essential - Web
# Author: Diego Marques
#
# https://hub.docker.com/r/h3llbl4z3r/kali-essential-web/
#
#
FROM kalilinux/kali-linux-docker:latest

RUN apt-get update \
	&& apt-get install -y curl wget \
	nikto dirb nmap sslyze \
	sqlmap git wfuzz fimap wpscan \
	vim

CMD [ "/bin/bash" ]