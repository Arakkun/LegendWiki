Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'UtauDB@gmail.com',
    password:             'Utaite1234',
    authentication:       'plain',
    enable_starttls_auto: true  }
  config.action_mailer.default_url_options = { 
    host: 'gmail.com',
    port: 587
  }
  # Birthday in gmail is 01/01/1991
  config.action_mailer.perform_deliveries = true 
  config.action_mailer.raise_delivery_errors = true
  OmniAuth.config.path_prefix = Devise.config.path_prefix
end