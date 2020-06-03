FROM alpine:3.12.0

RUN apk add --update --no-cache \
      bash \
      nodejs \
      yarn

ENV HEROKU_CLI_VERSION '7.41.1'
RUN yarn global add heroku@$HEROKU_CLI_VERSION
RUN which heroku # output: /usr/local/bin/heroku
CMD ["bash"]
