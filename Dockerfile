FROM ruby:3-alpine3.13

RUN apk add --no-cache \
    build-base \
    postgresql-dev \
    nodejs \
    npm \
    tzdata

WORKDIR /app_library

# Installing Ruby gems
COPY Gemfile* ./
RUN bundle install

# Installing Node.js dependencies
COPY package.json yarn.lock ./
RUN npm install -g yarn@v1.22.4 && yarn install

# Copying files
COPY . .

# Railties
RUN rails assets:precompile

EXPOSE 3000

CMD ["puma","-C", "config/puma.rb"]