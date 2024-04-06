#!/bin/bash

# if permission denied
# run script with ` chmod +x build.sh `
readonly ServerName="ShopServer"

# rm
rm ./$ServerName.tar.gz
rm -r ./target
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
mv ./*.jar ./SpringServer.jar
mv ./*.original ./SpringServer.jar.original

# target/classes
cd classes
cp ./simp.yaml ../../

# /
cd ../../

# compile
# build
tar -cvf $ServerName.tar.gz ./target ./simp.yaml ./upload ./static

rm -r simp.yaml
