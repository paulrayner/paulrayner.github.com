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

# Clone `master' branch of the repository using encrypted GH_TOKEN for authentification
echo -e "Cloning Jekyll site\n"
git clone https://${GH_TOKEN}@github.com/paulrayner/paulrayner.github.com.git site

# build site with jekyll, by default to `_site' folder
echo -e "Building jekyll site\n"
jekyll build -d site

cd site

touch .nojekyll
rm build.sh

# commit and push generated content to `master' branch
# since repository was cloned in write mode with token auth - we can push there
echo -e "Committing site\n"
#git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git commit -a -m "Travis #test001"
git push --quiet origin master > /dev/null 2>&1

cd ..
rm -rf site