FROM ruby:2.5.0

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
    nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
COPY .ruby-version /usr/src/app/.ruby-version

RUN bundle install
COPY config.rb /usr/src/app/config.rb
COPY config /usr/src/app/config
COPY source /usr/src/app/source

EXPOSE 4567
EXPOSE 35729
CMD ["bundle", "exec", "middleman", "server", "--bind-address", "0.0.0.0"]
