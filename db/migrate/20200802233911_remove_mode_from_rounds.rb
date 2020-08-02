class RemoveModeFromRounds < ActiveRecord::Migration[6.0]
  def change

    remove_column :rounds, :mode, :string
    add_column :matches, :format, :string
  end
end
