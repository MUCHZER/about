#!/bin/bash
DIR=$(PWD)
DATE=`date '+%Y-%m-%d %H:%M:%S'`

echo "Starting deploy..."
mkdir /tmp/deploy-github && \
cd /tmp/deploy-github && \
git clone -b gh-pages https://github.com/MUCHZER/about.git && \
cd about && \
git rm -f * && \
cp $DIR/dist/* . && \
git add * && \
git commit -m "build at : $DATE" && \
git push && \
rm -rf /tmp/deploy-github && \
echo "Deployed at $DATE !"

