class RenameColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :wins_last_year, :integer
    add_column :users, :losses_last_year, :integer
    add_column :users, :ties_last_year, :integer
    
  end
end
