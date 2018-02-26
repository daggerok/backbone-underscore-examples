#!/bin/bash

# add base tag:
# <head> -> <head><base href="/backbone-underscore-examples/"/>

if ! [ -z "$1" ]; then
  sed -i -e "s/\(src=\"\/\)/src=\"\/backbone-underscore-examples\//g" $1
  sed -i -e "s/\(href=\"\/\)/href=\"\/backbone-underscore-examples\//g" $1
  sed -i -e "s/\(<head>\)/<head><base href=\"\/backbone-underscore-examples\/\"\/>/g" $1
  cp -Rf $1 404.html
  touch .nojekyll
fi
