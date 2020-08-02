class AddFormatToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :format, :string
  end
end
