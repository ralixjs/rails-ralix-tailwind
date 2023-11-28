FROM ruby:3.2.1 AS builder
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
COPY Gemfile* .
COPY .ruby-version .
RUN bundle install
FROM ruby:3.2.1 AS runner
WORKDIR /app
# We copy over the entire gems directory for our builder image, containing the already built artifact
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY . .
ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]
