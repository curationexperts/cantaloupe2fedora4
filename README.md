[![Build Status](https://travis-ci.org/curationexperts/cantaloupe2fedora4.svg?branch=master)](https://travis-ci.org/curationexperts/cantaloupe2fedora4)

# cantaloupe2fedora4
A resolver to let cantaloupe get images from fedora 4

This is a [cantaloupe delegate script](https://medusa-project.github.io/cantaloupe/manual/3.4/delegate-script.html). 
Give it a unique identifier and it will determine the fedora 4 url to use for
image fetching.

## Dependencies
1. JRuby ~> 9.1
2. Cantaloupe ~> 3.4

## Environment Variables
This project uses `dotenv` to set environment variables during local development. 
Copy the sample dotenv file to `.env.development` and configure it for your local
environment while you're doing local development.
```
cp dotenv.sample .env.development
```

For production use, set the environment variables as expected in your production 
environment. See the `dotenv.sample` file for the list of environment variables
expected.
