require_relative 'boot'

# require 'rails/all'
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "active_job/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"
require "sprockets/railtie"
# require "active_storage"

Bundler.require(*Rails.groups)
require "whodat"

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

     # Do not swallow errors in after_commit/after_rollback callbacks.
     # config.active_record.raise_in_transactional_callbacks = true

     # to convert boolean to integer for sqlite3 per error message
     Rails.application.config.active_record.sqlite3.represent_boolean_as_integer = true

  end
end

