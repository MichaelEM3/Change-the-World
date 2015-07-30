class Tag < ActiveRecord::Base
has_many :tag_clubs
has_many :clubs, through: :tag_clubs

 def to_s
 	name
 end
end
