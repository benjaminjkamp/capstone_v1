class ChangeAvgToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :avg_two_year, :decimal, precision: 6, scale: 2
  end
end
