FROM vidbina/ror:alpha
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install && \
  npm install -g yarn
