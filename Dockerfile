FROM ruby:3.2.2-buster

EXPOSE 4567:4567
EXPOSE 35729:35729

WORKDIR /usr/src/gems

COPY ./Gemfile /usr/src/gems
COPY ./Gemfile.lock /usr/src/gems
COPY ./.ruby-version /usr/src/gems

RUN apt-get update && apt-get install -y nodejs && apt-get install -y npm

RUN bundle config set force_ruby_platform true

RUN bundle install

WORKDIR /usr/src/docs


CMD [ "bundle", "exec", "--gemfile=/usr/src/gems/Gemfile", "middleman", "server" ]
