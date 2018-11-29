require 'dotenv'


Mailjet.configure do |config|
    config.api_key = '31f55ca7096cec08d0dc03913622a5d7'
    config.secret_key = '38abef890b863937ebdcbb82714b4db7'
    config.default_from = 'THPBordeaux@laposte.net'
end