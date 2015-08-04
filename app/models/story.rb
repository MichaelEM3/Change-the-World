class Story < ActiveRecord::Base
  belongs_to :club
  has_many :commentaries 

  validates :title, :story,  presence: true
  validates :story, length: { maximum: 140}
end
