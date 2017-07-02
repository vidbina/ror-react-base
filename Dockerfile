FROM vidbina/ror:latest
WORKDIR /src
#ADD Gemfile Gemfile
#ADD Gemfile.lock Gemfile.lock
RUN chown -R ${USER}: /src
RUN bundle install && \
  npm install -g yarn
