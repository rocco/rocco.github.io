#!/bin/bash

echo "writing to _banner.txt"

exec &> _banner.txt

for file in *.jpg
do
  echo "
$file
data:image/jpeg;base64,"`openssl base64 -A -in $file`
done
