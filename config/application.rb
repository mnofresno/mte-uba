require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MteUba
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Enable the asset pipeline
    config.assets.enabled = true
    # config.assets.initialize_on_precompile = false

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Custom directories with classes and modules you want to be autoloadable.
    config.autoload_paths += %W(#{Rails.root}/lib/autoload)


    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.time_zone = 'Buenos Aires'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'es'

    # UPGRADE Rails 4.0.0 Authenticity Tokens for Remote Forms can be set case by case (form_for @obj, remote: true, authenticity_token: true)
    config.action_view.embed_authenticity_token_in_remote_forms = true

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = 'utf-8'

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password, :password_confirmation]

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true


    # list of availables engines
    #config.engines = %w(algo).map(&:to_sym)

  end
end
