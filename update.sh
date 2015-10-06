#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$DIR/../tradr-ws"
find ./build -name java -type d -exec rm -rf '{}' \;
catkin_make --use-ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo
find ./build -name java -type d -exec rm -rf '{}' \
ROS_MAVEN_DEPLOYMENT_REPOSITORY="$DIR" catkin_make --use-ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo
