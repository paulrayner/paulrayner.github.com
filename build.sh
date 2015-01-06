#!/bin/bash

# Only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# Set Git user
git config user.email "paul@virtual-genius.com"
git config user.name "Paul Rayner"

# Enable error reporting to the console
set -e

echo -e "Building jekyll site (to _site by default)\n"
jekyll build

echo
rm -rf ../paulrayner.github.com.master

# Clone `master' branch of the repository using encrypted GH_TOKEN for authentification
echo -e "Cloning master branch of Jekyll site\n"
git clone https://${GH_TOKEN}@github.com/paulrayner/paulrayner.github.com.git ../paulrayner.github.com.master


echo -e "Copy generated HTML site to master branch"
cp -R _site/* ../paulrayner.github.com.master

# commit and push generated content to `master' branch
# since repository was cloned in write mode with token auth - we can push there
echo -e "Committing site\n"
cd ../paulrayner.github.com.master
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin master > /dev/null 2>&1