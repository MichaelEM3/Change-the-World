class Story < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: -> (controller, model) { controller && controller.current_user }

  belongs_to :club
  has_many :commentaries, dependent: :destroy

  validates :title, :story,  presence: true
  validates :story, length: { maximum: 2000}
end
