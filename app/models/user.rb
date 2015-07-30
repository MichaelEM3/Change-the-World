class User < ActiveRecord::Base
  belongs_to :user_club
  validates :name, :username, :email, :password, presence: true, length: { minimum: 2}
  validates :email, uniqueness: true
  has_secure_password

end
