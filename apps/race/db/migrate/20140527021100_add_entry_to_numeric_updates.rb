class AddEntryToNumericUpdates < ActiveRecord::Migration
  def change
    add_column :race_numeric_updates, :entry, :string
  end
end
