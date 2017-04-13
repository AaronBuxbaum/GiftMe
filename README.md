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
Set up network: `docker network create --subnet=172.18.0.0/16 dockernetwork`
Start image: `docker run --net dockernetwork --ip 172.18.0.22 -p 3000:3000 -t aaronbuxbaum/gift-me`
Browser URL: `localhost:3000/`



*Useful VS Code extensions*
 - `ext install debugger-for-chrome`
 - `ext install vscode-jest`
