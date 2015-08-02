class User < ActiveRecord::Base
	
  has_many :user_clubs 
  has_many :clubs, through: :user_clubs

  has_many :tags, through: :clubs

  validates :name, :username, :email, :password, :password_confirmation, presence: true, length: { minimum: 2}
  validates :password, confirmation: true
  validates :email, uniqueness: true
  has_secure_password
end
