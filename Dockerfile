FROM ruby:3.3.4

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /myapp
COPY src/myapp/Gemfile /myapp/Gemfile
COPY src/myapp/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY src/myapp /myapp

# 変更箇所: 必要なgemをインストールするために、Gemfile.lockを更新
RUN bundle update