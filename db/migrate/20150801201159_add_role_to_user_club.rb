class AddRoleToUserClub < ActiveRecord::Migration
  def change
    add_column :user_clubs, :role, :string
  end
end
