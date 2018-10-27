# base layer
FROM ruby:2.5.1 AS base

WORKDIR /easy_rental

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && apt-get install yarn -qq

RUN gem install bundler

COPY Gemfile /easy_rental/Gemfile

COPY Gemfile.lock /easy_rental/Gemfile.lock

RUN bundle install

COPY . /easy_rental
