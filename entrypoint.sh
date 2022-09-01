#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

echo "Starting Jekyll build"

####################################################
# Set workspace permissions
####################################################

chmod -R a+w /github/workspace

####################################################
# Build the Jekyll site
####################################################

if [ "$1" = "true" ]
then
  jekyll build --trace --drafts
else
  jekyll build --trace
fi

####################################################
# Build completed
####################################################

echo "Completed Jekll build"
