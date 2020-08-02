class RemoveColumnsFromMatches < ActiveRecord::Migration[6.0]
  def change

    remove_column :matches, :mode, :string
    remove_column :matches, :format, :string
  end
end
