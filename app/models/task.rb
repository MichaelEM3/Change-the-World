class Task < ActiveRecord::Base
  belongs_to :project
  has_many :users, through: :user_clubs
  has_many :user_clubs
end
