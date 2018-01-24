#!/bin/bash

VERSION=$1

docker image build -t h3llbl4z3r/kali-essential-web:latest .
docker tag h3llbl4z3r/kali-essential-web:latest h3llbl4z3r/kali-essential-web:$VERSION
docker tag h3llbl4z3r/kali-essential-web:latest h3llbl4z3r/kali-essential-web:$(echo $VERSION | cut -f1-2 -d '.')
docker tag h3llbl4z3r/kali-essential-web:latest h3llbl4z3r/kali-essential-web:$(echo $VERSION | cut -f1 -d '.')
