if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
	          :provider		 => 'AWS',
	          :aws_access_key_id	 => ENV['S3_ACCESS_KEY'],
		  :aws_secret_access_key => ENV['S3_SECRET_KEY'],
		  :region		 => 'eu-central-1',
		  :signature_version	 => '4',
		  :signature_method	 => 'HmacSHA256'
		}
		config.cache_dir = "#{Rails.root}/tmp/uploads"
		config.fog_directory	 =  ENV['S3_BUCKET']
	end
end
