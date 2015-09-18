class AddFieldsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :sash_id, :integer
    add_column :tasks, :level,   :integer, :default => 0
  end
end
