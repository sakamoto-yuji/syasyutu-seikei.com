require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TWITTER
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = 'Asia/Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.default_timezone = :local

    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
