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

RUN apt-get update \
	&& apt-get install -y tor proxychains netcat \
	&& service tor start

RUN apt-get update \
	&& apt-get install -y masscan cewl python-pip exploitdb

RUN pip install droopescan

COPY docker-entrypoint.sh /opt

COPY git-apps/CMSmap /opt/CMSmap
COPY git-apps/SecLists /opt/SecLists
COPY git-apps/Fingerprinter /opt/Fingerprinter

EXPOSE 9050

ENTRYPOINT [ "/opt/docker-entrypoint.sh" ]

CMD [ "/bin/bash" ]
