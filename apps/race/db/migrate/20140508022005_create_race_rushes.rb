class CreateRaceRushes < ActiveRecord::Migration
  def change
    create_table :race_rushes do |t|
      t.string :name

      t.timestamps
    end
  end
end
