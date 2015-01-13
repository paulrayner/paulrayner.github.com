#!/bin/bash

# Only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# Enable error reporting to the console
set -e

# Auto-publish the next draft
echo -e "Auto-publishing the next draft\n"
rake publish

echo -e "Building jekyll site (to _site by default)\n"
jekyll build

# Use encrypted GH_TOKEN for authentification
echo -e "Cloning master branch of Jekyll site\n"
git clone https://${GH_TOKEN}@github.com/paulrayner/paulrayner.github.com.git ../paulrayner.github.com.master

echo -e "Copy generated HTML site to master branch"
cp -R _site/* ../paulrayner.github.com.master

echo -e "Committing and pushing site to master branch on GitHub pages repository\n"
cd ../paulrayner.github.com.master
git config user.email "paul@virtual-genius.com"
git config user.name "Paul Rayner"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet --force origin master > /dev/null 2>&1

echo -e "Cleaning up"
rm -rf ../paulrayner.github.com.master
rm -rf _site