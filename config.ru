require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController

development:
  adapter: postgresql
  encoding: unicode
  database: development
  pool: 2
production:
  adapter: postgresql
  encoding: unicode
  pool: 5
  host: <%= ENV['DATABASE_HOST'] %>
  databse: production 
