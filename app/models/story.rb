class Story < ActiveRecord::Base
  belongs_to :club

  validates :title, :story,  presence: true
  validates :story, length: { maximum: 140}
end

