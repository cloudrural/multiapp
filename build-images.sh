#!/bin/bash

# vars for docker staging
basedir=$(pwd)
version=$2
build_exec="/usr/bin/docker"
set=$1

# Building the images
function _nodeapp_() {

  echo "Building the docker image for nodeapp.....!"
  cd $basedir/nodeapp
  $build_exec build -t nodeapp:$version -f Dockerfile .
  $build_exec images nodeapp:$version
  echo "Nodeapp image successfully created.....!"
}

function _pyapp_() {

  echo "Building the docker image for Python App.....!"
  cd $basedir/pyapp
  $build_exec build -t pyapp:$version -f Dockerfile .
  $build_exec images pyapp:$version
  echo "Python App image successfully created.....!"
}

function _goapp_() {

  echo "Building the docker image for Go App.....!"
  cd $basedir/goapp
  $build_exec build -t goapp:$version -f Dockerfile .
  $build_exec images goapp:$version
  echo "Go App image successfully created.....!"
}

function _phpapp_() {

  echo "Building the docker image for phpapp.....!"
  cd $basedir/phpapp
  $build_exec build -t phpapp:$version -f Dockerfile .
  $build_exec images phpapp:$version
  echo "phpapp successfully created.....!"
}

function _nginx_() {

  echo "Building the docker image for Nginx Web .....!"
  cd $basedir/nginx
  $build_exec build -t web:$version -f Dockerfile.web .
  $build_exec images web:$version
  echo "Nginx webapp image successfully created.....!"
}

if [ $set == all ]; then
   _nodeapp_
   _phpapp_
   _goapp_
   _pyapp_
   _nginx_
   echo "Successfully Built all images of Multiapp Deployment"

fi;
