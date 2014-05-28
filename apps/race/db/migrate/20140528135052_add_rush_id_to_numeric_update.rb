class AddRushIdToNumericUpdate < ActiveRecord::Migration
  def change
    add_column :race_numeric_updates, :rush_id, :integer
    add_index :race_numeric_updates, :rush_id
  end
end
