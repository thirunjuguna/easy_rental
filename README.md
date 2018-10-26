# Easy Rental
[![Coverage Status](https://coveralls.io/repos/github/thirunjuguna/easy_rental/badge.svg?branch=master)](https://coveralls.io/github/thirunjuguna/easy_rental?branch=master)
[![Build Status](https://travis-ci.com/thirunjuguna/easy_rental.svg?branch=master)](https://travis-ci.com/thirunjuguna/easy_rental)
## Development

This project is configured to run in Docker containers facilitated by `docker-compose`. [nib](https://github.com/technekes/nib) is our tool of choice for interacting with `docker-compose` in development.

### Running the app

Use [nib](https://github.com/technekes/nib) to build and start up the web app.

```sh
nib build --pull
nib up
```

### Running Tests

The app is configured to use [guard](https://github.com/guard/guard) facilitate running the tests as files change. To start up guard run:

```sh
nib guard web
```

Alternatively the specs can be run as a one-off with:

```sh
nib rspec web
```