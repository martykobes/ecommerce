Rails.configuration.stripe = {

  publishable_key: (ENV['stripe_test_publishable_key']).to_s,

  secret_key: (ENV['stripe_test_secret_key']).to_s

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
