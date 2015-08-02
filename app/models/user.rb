class User < ActiveRecord::Base
<<<<<<< HEAD
	
  has_many :user_clubs 
  has_many :clubs, through: :user_clubs

  has_many :tags, through: :clubs

=======
  has_many :user_clubs
  has_many :tags, through: :clubs

  has_many :clubs, through: :user_clubs

>>>>>>> 8b728e817edd7eb70398821c982ddf711f8941d0
  validates :name, :username, :email, :password, :password_confirmation, presence: true, length: { minimum: 2}
  validates :password, confirmation: true
  validates :email, uniqueness: true
  has_secure_password

  def user_in_club(club_id)
    UserClub.find_by(club: club_id, user: self.id) ? true : false
  end

  def user_admin_in_club?(club_id)
    userclub = UserClub.find_by(club: club_id, user: self.id)
    userclub.role == 'admin' ? true : false
  end
end
