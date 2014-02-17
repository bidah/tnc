Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  # provider :twitter, ENV['KzA2CfEZewV6vvoKUSSjYg'],ENV['nRE4LT49NLygA1yObzSQmhrGpBKTlMjeDNxh0cQo']
    provider :developer unless Rails.env.production?
    provider :twitter, 'KzA2CfEZewV6vvoKUSSjYg', 'nRE4LT49NLygA1yObzSQmhrGpBKTlMjeDNxh0cQo'
    provider :facebook, '676771872383735', '1c723973bb3824edb6ad3507d947676c'
end