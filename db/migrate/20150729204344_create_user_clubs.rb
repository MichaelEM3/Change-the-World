class CreateUserClubs < ActiveRecord::Migration
  def change
    create_table :user_clubs do |t|

      t.timestamps null: false
    end
  end
end
