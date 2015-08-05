class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :club, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :location
      t.date :due_date

      t.timestamps null: false
    end
  end
end
