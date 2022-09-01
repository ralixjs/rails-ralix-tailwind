require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsRalixTailwind
  class Application < Rails::Application
    # Load Rails defaults
    config.load_defaults 7.0

    # This tells Rails to serve error pages from the app itself, rather than using static error pages in public/
    config.exceptions_app = self.routes
  end
end
