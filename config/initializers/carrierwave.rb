if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
	          :provider		 => 'AWS',
	          :aws_access_key_id	 => ENV['S3_ACCESS_KEY'],
		  :aws_secret_access_key => ENV['S3_SECRET_KEY'],
		  :region		 => 'eu-central-1',
		  :x_amz_algorithm	 => 'AWS4-HMAC-SHA256',
		  'x-amz-server-side-encryption-customer-algorithm' => 'AES256',
		        'x-amz-server-side-encryption-customer-key' => '************************************',
			      'x-amz-server-side-encryption-customer-key-md5' => '************************************'
			        
}
		config.cache_dir = "#{Rails.root}/tmp/uploads"
		config.fog_directory	 =  ENV['S3_BUCKET']
	end
end
