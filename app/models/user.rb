class User < ActiveRecord::Base
  belongs_to :user_club
  has_many :tags
  validates :name, :username, :email, :password, presence: true, length: { minimum: 2}
  validates :email, uniqueness: true
end
