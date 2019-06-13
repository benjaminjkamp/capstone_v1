class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
