require 'interventions_gateway_api'
Rollbar.configure do |config|
  enabled = use_async = Env.deployed?
  config.access_token = Env.rollbar_token
  config.environment  = Env.stats_environment
  config.enabled      = enabled
  config.use_async    = use_async
end
run InterventionsGatewayApi
