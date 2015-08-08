class AddTaskToUserClubs < ActiveRecord::Migration
  def change
    add_reference :user_clubs, :task, index: true, foreign_key: true
  end
end
