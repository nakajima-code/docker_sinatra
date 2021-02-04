FROM ruby

WORKDIR /src

COPY  ./src /src

RUN bundle config --local set path 'vendor/bundle' \
  && bundle install

CMD ["bundle", "exec", "ruby", "app.rb"]
