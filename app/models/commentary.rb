class Commentary < ActiveRecord::Base
  belongs_to :story
  belongs_to :user

  validates :comment, presence: true
end
