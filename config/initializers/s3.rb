# initializers/s3.rb
if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { :access_key_id => ENV['AKIAIUEZBD7DB6RDXSHQ'], :secret_access_key => ENV['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'], :bucket => "wyncodeproject-production"}
else
  # get credentials from YML file
  S3_CREDENTIALS = Rails.root.join("config/s3.yml")
end
