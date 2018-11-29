
Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.dig(:PUBLISHABLE_KEY),
  :secret_key      => Rails.application.credentials.dig(:SECRET_KEY)
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]