Rails.configuration.stripe = {
  :publishable_key => "pk_test_yty2D8Ok9MHFkiAfdYGauDVi",
  :secret_key      => "sk_test_mINNaHlKzwesPgrfBLPsOsjS"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]