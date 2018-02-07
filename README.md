# Docker Kali Linux Essential - Web

This docker image is based on Kali Linux image, and adds essential applications to pentest a Web Application

[Docker Hub](https://hub.docker.com/r/h3llbl4z3r/kali-essential-web)

## Installed apps
- curl
- wget
- nikto
- dirb
- nmap
- sslyze
- sqlmap
- git
- wfuzz
- fimap
- wpscan
- vim
- tor
- proxychains
- netcat
- masscan
- exploitdb (searchsploit)
- droopescan
- CMSmap
- SecLists
- Fingerprinter

## Exposed Ports
- 9050 - Tor Network

## Changelog
- 1.0.0 - Initial deploy
- 1.0.1 - Added netcat, tor and proxychains
- 1.0.2 - Added masscan, droopescan, exploitdb and git apps as submodules
