class AddModeToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :mode, :string
  end
end
