FROM renderapp/ruby:3.1.2p20 

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
