FROM vidbina/ror:alpha
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN npm install -g yarn
RUN bundle && yarn
