class AddUserToCommentary < ActiveRecord::Migration
  def change
    add_reference :commentaries, :user, index: true, foreign_key: true
  end
end
