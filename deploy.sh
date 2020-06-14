#!/usr/bin/env sh

REPO='p5-vue-boilerplate'
USERNAME='statox'

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:$USERNAME/$REPO.git master:gh-pages

cd -
