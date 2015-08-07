class User < ActiveRecord::Base
  has_many :clubs, through: :user_clubs
  has_many :user_clubs
  has_many :tasks, through: :user_clubs

  validates :name, :username, :email, :password, :password_confirmation, presence: true, length: { minimum: 2 }
  validates :password, confirmation: true
  validates :email, uniqueness: true
  has_secure_password

  has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50>"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def user_in_club(club_id)
    UserClub.find_by(club: club_id, user: id) ? true : false
  end

  def user_admin_in_club?(club_id)
    userclub = UserClub.find_by(club: club_id, user: id)
    return false if userclub.nil?
    userclub.role == 'admin' ? true : false
  end
end
