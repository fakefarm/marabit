class AddRushIdToNumericUpdate < ActiveRecord::Migration
  def change
    add_column :race_numeric_updates, :rush_id, :integer
  end
end
