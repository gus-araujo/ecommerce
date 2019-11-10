FROM ruby:2.5.1
ENV NAME="Unknown Ecommerce"
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ecommerce
WORKDIR /ecommerce
ADD Gemfile /ecommerce/Gemfile
ADD Gemfile.lock /ecommerce/Gemfile.lock
RUN bundle install
ADD . /ecommerce