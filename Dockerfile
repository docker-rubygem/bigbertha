FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.5

RUN gem install bigbertha --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bb_auth_token"]
CMD ["--help"]
