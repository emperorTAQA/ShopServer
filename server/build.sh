#!/bin/bash

# if permission denied
# run script with ` chmod +x build.sh `
readonly ServerName="ShopServer"

# rm
rm ./$ServerName.tar.gz
rm -r ./target
rm -r static
# web 编译
cd ../web

npm run build

mv ./static ../server/

# maven 编译
cd ../server

mvn compile
mvn deploy

# target 统一文件名
cd target
#mv ./*.jar ./SpringServer.jar
#mv ./*.original ./SpringServer.jar.original

# target/classes
cd classes
cp ./sgrid.yml ../../

# /
cd ../../

# compile
# build
tar -cvf $ServerName.tar.gz ./target ./sgrid.yml ./upload ./static

rm -r sgrid.yml
