# base layer
FROM ruby:2.5.1 AS base

WORKDIR /usr/src/app

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && apt-get install yarn -qq

RUN gem install bundler

COPY Gemfile /usr/src/app/Gemfile

COPY Gemfile.lock /usr/src/app/Gemfile.lock

# development and test layer with all dependencies
FROM base AS development

RUN bundle install -j5 --without staging production

COPY . /usr/src/app

# release layer
FROM base AS release

RUN bundle install -j5 --without development test

COPY . /usr/src/app

CMD puma
