require 'dotenv/load'
require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module HelloRailsBackEnd
  class Application < Rails::Application
    config.load_defaults 7.0

    # Use Dotenv to manage environment variables
    # You can also set environment variables in other ways (e.g. through your hosting provider)
    # See https://github.com/bkeepers/dotenv for more information
    Dotenv.load('.env.local', '.env')

    # Allow CORS requests from any domain
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end

    config.api_only = true
  end
end
