CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    region:                ENV['AWS_REGION'],            # optional
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_ACCESS_KEY'],        # required
    aws_secret_access_key: ENV['AWS_SECRET_KEY'],        # required
  }
  config.fog_directory  = ENV['AWS_BUCKET']              # required
  config.fog_public     = false                          # optional, defaults to true
end