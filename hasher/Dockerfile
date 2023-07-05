# Choose 3.2.2 as it is the last stable version.
FROM ruby:3.2.2

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY hasher.rb .

CMD ["ruby", "./hasher.rb"]