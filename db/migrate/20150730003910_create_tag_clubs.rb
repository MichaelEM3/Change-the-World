class CreateTagClubs < ActiveRecord::Migration
  def change
    create_table :tag_clubs do |t|

      t.timestamps null: false
    end
  end
end
