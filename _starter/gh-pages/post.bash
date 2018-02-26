#!/bin/bash

# replace base-path with root:
# /backbone-underscore-examples/ -> /

if ! [ -z "$1" ]; then
  sed -i -e "s/\<head\>\<base\ href=\"\/backbone-underscore-examples\/\"\/>/\<head\>/g" $1
  sed -i -e "s/\(href=\"\/backbone-underscore-examples\/\)/href=\"\//g" $1
  sed -i -e "s/\(src=\"\/backbone-underscore-examples\/\)/src=\"\//g" $1
  rm -rf .nojekyll 404.html $1-e
fi
