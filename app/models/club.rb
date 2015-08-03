class Club < ActiveRecord::Base

  has_many :user_clubs, dependent: :destroy
  has_many :users, through: :user_clubs
  has_many :tag_clubs, dependent: :destroy
  has_many :tags, through: :tag_clubs

  validates :title, :description, :location, presence: true
  validates :description, length: { minimum: 30}

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
<<<<<<< HEAD
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
=======
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
>>>>>>> 8b728e817edd7eb70398821c982ddf711f8941d0

	def tag_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
		self.tags = new_or_found_tags
	end

end
