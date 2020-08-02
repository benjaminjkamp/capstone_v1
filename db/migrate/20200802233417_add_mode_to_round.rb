class AddModeToRound < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :mode, :string
  end
end
