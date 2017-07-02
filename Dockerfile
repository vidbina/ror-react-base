FROM vidbina/ror:latest
WORKDIR /src
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN echo ${USER} && chown -R ${USER}: /src && ls -la
RUN bundle install && \
  npm install -g yarn
