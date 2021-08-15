#!/bin/bash

public_dir=$1

if [ -z $1 ]
then
  echo "\$1 empty"
  exit 1
fi

rm -rf ./public
hugo -t even
yes | cp -r public/* $public_dir/
cd $public_dir
git add -A
git commit -m "update"
git push origin main
cd -
