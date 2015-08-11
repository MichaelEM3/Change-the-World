# initializers/s3.rb
if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { :access_key_id => ENV['AKIAJOHWY434RKAJYB6A'], :secret_access_key => ENV['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'], :bucket => "wyncodeproject-production"}
else
  # get credentials from YML file
  S3_CREDENTIALS = Rails.root.join("config/s3.yml")
end

