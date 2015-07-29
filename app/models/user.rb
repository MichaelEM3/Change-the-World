class User < ActiveRecord::Base
  belongs_to :user_club
  has_secure_password
end
