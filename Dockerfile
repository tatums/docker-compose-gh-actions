FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app/ruby_bar
# Copy across dependencies and install them
COPY ruby_bar /app
RUN bundle install
ADD . /app
