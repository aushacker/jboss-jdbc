#!/bin/bash

function install_modules_ext(){
  if [ $# != 2 ]; then
    echo "Usage: Directory and paths parameters required"
    return
  fi
  install_dir=$1
  install_paths=$2

  for install_path in $(echo $install_paths | sed "s/,/ /g"); do
    mkdir -p $JBOSS_HOME/modules/${install_path}
    cp -rf ${install_dir}/${install_path}/* $JBOSS_HOME/modules/${install_path}
  done
}
