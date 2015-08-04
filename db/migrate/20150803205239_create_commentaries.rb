class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.text :comment
      t.references :story, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
