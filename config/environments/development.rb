$stdout.sync = true
Dengue::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  config.action_mailer.default_url_options = { host: "127.0.0.1", port: "5000", protocol: "http"}
  
  config.log_level = :debug

  # config.i18n.available_locales = :pt
   
  # Gmail SMTP
  config.action_mailer.delivery_method = :smtp
   # Gmail SMTP server setup
  config.action_mailer.smtp_settings = {
    :address => "smtp.gmail.com",
    :enable_starttls_auto => true,
    :port => 587,
    :domain => 'reportdengue@gmail.com',
    :authentication => :plain,
    :user_name => 'reportdengue',
    :password => 'dengue@!$'
  }

  # Paperclip gem: ImageMagic path
  Paperclip.options[:command_path] = "/usr/local/bin/convert"
  
  # S3 Credential
  config.paperclip_defaults = {
    :storage => :filesystem
  }
end
