#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd music-repo
echo $version
gradle assemble -PVersion=$version
pwd
ls build/libs/
cp build/libs/spring-music-*.war ../build-output/.
