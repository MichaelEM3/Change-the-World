class TagClub < ActiveRecord::Base
  belongs_to :club
  belongs_to :tag
end
