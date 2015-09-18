class AddFieldsToUserClubs < ActiveRecord::Migration
  def change
    add_column :user_clubs, :sash_id, :integer
    add_column :user_clubs, :level,   :integer, :default => 0
  end
end
