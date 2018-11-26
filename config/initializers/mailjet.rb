require 'dotenv'


Mailjet.configure do |config|
    config.api_key = ENV['public_key']
    config.secret_key = ENV['secret_key']
    config.default_from = 'THPBordeaux@gmail.com'
  end