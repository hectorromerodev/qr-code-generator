#!/usr/bin/env sh

# abort on errors
set -e

# build
npx tailwindcss -o src/assets/css/app.css --minify
yarn run build

# Create dist branch
git checkout -B dist

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f https://github.com/hrwebdevelopers/qr-code-generator main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push https://github.com/hectorromerodev/qr-code-generator
