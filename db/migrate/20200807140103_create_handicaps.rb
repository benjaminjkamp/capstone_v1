class CreateHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :handicaps do |t|
      t.integer :hole
      t.integer :value
      t.integer :course_id

      t.timestamps
    end
  end
end
