CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider								=> 'AWS',
		:aws_access_key_id			=> ENV['AWS_ACCESS_KEY_ID'],
		:aws_secret_access_key 	=> ENV['AWS_SECRET_ACCESS_KEY'],
		:region									=> 'us-west-1'
	}
	config.fog_directory		= "onpremrails-#{Rails.env}"
	config.fog_public				= false

	# Use CloudFront CDN when in Production environment
	if Rails.env == "production"
		config.fog_host					= d2papxxk0j9ui4.cloudfront.net
	end
end