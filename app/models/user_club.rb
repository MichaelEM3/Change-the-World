class UserClub < ActiveRecord::Base
  has_many :users
  has_many :clubs
end
