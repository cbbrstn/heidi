FROM ruby:2.4.1-slim 

RUN apt-get update && apt-get install -y \ 
  build-essential \
  sqlite3 \
  libsqlite3-dev \
  nodejs

ENV INSTALL_PATH /heidi
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY ./Gemfile $INSTALL_PATH
COPY ./Gemfile.lock $INSTALL_PATH
RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
