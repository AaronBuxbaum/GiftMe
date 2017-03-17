*GiftMe*
_by Aaron Buxbaum_

[![Build Status](https://travis-ci.org/AaronBuxbaum/GiftMe.svg?branch=master)](https://travis-ci.org/AaronBuxbaum/GiftMe)

A better way to buy gifts, via the power of machine learning.


# To Use #
 - `yarn start-server` to spin up the backend
 - `yarn start` to run frontend locally
 - `yarn build` to compile
 - `yarn test` to run tests
 - `gcloud app deploy` to deploy to Google Cloud Platform

To develop:
Create image: `docker build -t aaronbuxbaum/gift-me -f Dockerfile-dev .`
Start image: `docker run -t aaronbuxbaum/gift-me`



*Useful VS Code extensions*
 - `ext install debugger-for-chrome`
 - `ext install vscode-jest`