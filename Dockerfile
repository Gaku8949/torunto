FROM ruby:3.3.5

RUN apt-get update -qq && \
    apt-get install -y nodejs default-mysql-client

WORKDIR /app

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]