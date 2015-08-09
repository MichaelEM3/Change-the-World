class Club < ActiveRecord::Base

  has_many :user_clubs, dependent: :destroy
  has_many :users, through: :user_clubs
  # has_many :tag_clubs, dependent: :destroy
  # has_many :tags, through: :tag_clubs
  has_many :stories, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :title, :description, :location, presence: true
  validates :description, length: { minimum: 20}

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	# def tag_list
	# 	self.tags.collect do |tag|
	# 		tag.name
	# 	end.join(", ")
	# end


	# def tag_list=(tags_string)
	# 	tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
	# 	new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
	# 	self.tags = new_or_found_tags
	# end

	# def self.search(search) --- This method does not work as ruby '||' (or) functions do not work well in this seql code
	#   where("title ILIKE ?", "%#{search}%") || where("description ILIKE ?", "%#{search}%") || where("location ILIKE ?", "%#{search}%")
	# end

	def self.search(search)
	  where("title ILIKE ? OR description ILIKE ? OR location ILIKE ? OR thumbtag ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
	end


end
