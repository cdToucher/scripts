#!/usr/bin/env bash
BUILD_HOME=
APP_HOME=

cd $BUILD_HOME
mvn clean package
scp -vr $BUILD_HOME/ root@10.1.51.238:$APP_HOME
ssh root@10.1.51.238 "service app restart; sh $APP_HOME/bin/showlog.sh"
