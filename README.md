*GiftMe*
_by Aaron Buxbaum_

[![Build Status](https://travis-ci.org/AaronBuxbaum/GiftMe.svg?branch=master)](https://travis-ci.org/AaronBuxbaum/GiftMe)

A better way to buy gifts, via the power of machine learning.


# To Use: #
 - `yarn start-server` to spin up the backend
 - `yarn start` to run frontend locally
 - `yarn build` to compile
 - `yarn test` to run tests


# To Develop: #
 - Create image: `docker build -t aaronbuxbaum/gift-me -f Dockerfile-dev .`
 - Start image: `docker run -dt -p 3000:3000 --name gift-me -v $(pwd)/src:/app/src aaronbuxbaum/gift-me`
 - View logs: `docker logs gift-me -f`
 - Browser URL: `localhost:3000`


*Useful VS Code extensions*
 - `ext install debugger-for-chrome`
 - `ext install vscode-jest`
