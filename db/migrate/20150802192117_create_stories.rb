class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.belongs_to :club, index: true, foreign_key: true
      t.string :title
      t.text :story

      t.timestamps null: false
    end
  end
end
