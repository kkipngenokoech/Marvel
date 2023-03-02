FROM ruby:3.1.2


WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
