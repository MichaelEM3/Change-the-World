class User < ActiveRecord::Base
  belongs_to :user_club
  has_many :tags
  validates :name, :username, :email, :password, :password_confirmation presence: true, length: { minimum: 2}
  validates :password, confirmation: true
  validates :email, uniqueness: true
end
