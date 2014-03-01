Soundhole::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  Devise.setup do |config|
    config.omniauth :facebook, '590166264406206', 'bcfe0acf089ba4451275b2eee4d2b6df', :scope => 'email,user_birthday', :display => 'popup'
    config.omniauth :twitter, 'JC4EQ82qXLmZlnF2XLqfog', 'rc5JTU2PJ0DteNAyXyou5XdeeC7XruFareH7rsyd1c', :display => 'popup'
  end
end
