class AddColumnToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :thumbtag, :string
  end
end
