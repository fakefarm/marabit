class AddUnitDescPriceToRush < ActiveRecord::Migration
  def change
    add_column :race_rushes, :metric, :string
    add_column :race_rushes, :description, :string
  end
end


