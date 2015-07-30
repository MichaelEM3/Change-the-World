class AddColumnToTagClubs < ActiveRecord::Migration
  def change
    add_reference :tag_clubs, :tag, index: true, foreign_key: true
    add_reference :tag_clubs, :club, index: true, foreign_key: true
  end
end
