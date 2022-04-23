#!/bin/bash
#Exit on non-zero status, even in pipelines. 
set -eo pipefail
#Exit on unbound variable
set -u
mkdir temp
cd temp
git init
git remote add origin -f https://github.com/pulumi/examples/
git config core.sparseCheckout true
echo azure-go-appservice-docker >> .git/info/sparse-checkout
git pull origin master
cd ..
rm -rf temp/azure-go-appservice-docker/.git
rm -rf temp/azure-go-appservice-docker/README.md
mv temp/azure-go-appservice-docker/* .
rm -rf temp
