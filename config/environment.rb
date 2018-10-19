# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Paginate.configure do |config|
  config.size = 20
  config.param_name = :p
end