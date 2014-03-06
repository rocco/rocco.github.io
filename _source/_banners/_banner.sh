#!/bin/bash

DIR=$(cd $(dirname "$0"); pwd)
echo "writing to _banner.txt"

exec &> $DIR/_banner.txt

for file in $DIR/*.jpg
do
fname=`basename $file`
  echo "
$fname
data:image/jpeg;base64,"`openssl base64 -A -in $file`
done
