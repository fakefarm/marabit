class CreateRaceNumericUpdates < ActiveRecord::Migration
  def change
    create_table :race_numeric_updates do |t|
      t.timestamps
    end
  end
end
