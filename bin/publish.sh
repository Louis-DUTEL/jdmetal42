#!/usr/bin/env bash

git clone git@github.com:Louis-DUTEL/jdmetal42.git  /tmp/jdmetal42 --branch gh-pages

cp /tmp/jdmetal42/CNAME public/
cp robots.txt public/

rm -rf /tmp/jdmetal42/*

cp -r public/* /tmp/jdmetal42

cd /tmp/jdmetal42

git add -A .
git commit -m "Update on: `date`"
git push origin gh-pages