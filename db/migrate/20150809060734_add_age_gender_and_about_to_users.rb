class AddAgeGenderAndAboutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :about, :text
    add_column :users, :gender, :string
  end
end
