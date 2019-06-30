require File.expand_path('../boot', __File__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Splurty
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Arizona' (US & Canada)'

    #The default local is :en and all translations from config/locales/*.rb, yml are auto loaded.
    # config.o18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb.yml}').to_s]
    # config.i18n.default_locale = :de

    # Add the fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # Precompile additoinal assets
    config.assets.precompile += %w( .svg .eot .woff .ttf)
    # the framework and any gems in your application.
  end
end
