FROM ruby:3.2.3

# 必要なパッケージ
RUN apt-get update -qq && apt-get install -y \
    curl \
    gnupg2 \
    build-essential \
    postgresql-client \
    git

# Node.js 18 をインストール
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Yarn をインストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarn.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/yarn.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn

# 作業ディレクトリ
WORKDIR /app

# Gemfile をコピーして bundle install
COPY Gemfile* ./
RUN bundle install

# アプリ全体をコピー
COPY . ./

# Rails 起動前に Logger をロード
RUN echo "require 'logger'" >> /usr/local/bundle/setup_logger.rb
ENV RUBYOPT="-r/usr/local/bundle/setup_logger"
