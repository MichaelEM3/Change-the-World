class AddFieldsToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :sash_id, :integer
    add_column :clubs, :level,   :integer, :default => 0
  end
end
