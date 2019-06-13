class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :round_id
      t.string :name
      t.string :winner

      t.timestamps
    end
  end
end
