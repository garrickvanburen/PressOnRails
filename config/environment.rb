# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.plugins = [ :all ]
  config.time_zone = 'UTC'
  
  APP_NAME                    = "PressOnRails"
  APP_URL                     = "#{APP_NAME}.com"
  APP_SLOGAN                  = "A Rails Front-End for WordPress"
  APP_VERSION                  = "0.0.1"
end
