OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
   provider :twitter, 'UeJldgu57t0y220ML71ywEM02', '3u9VwV7alBepz83hSyCDgdiY6CGIHZdMTxc3lcCg1QQSRst1Sw'
end