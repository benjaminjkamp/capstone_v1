class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :match_id
      t.integer :score_hole_1
      t.integer :score_hole_2
      t.integer :score_hole_3
      t.integer :score_hole_4
      t.integer :score_hole_5
      t.integer :score_hole_6
      t.integer :score_hole_7
      t.integer :score_hole_8
      t.integer :score_hole_9
      t.integer :score_hole_10
      t.integer :score_hole_11
      t.integer :score_hole_12
      t.integer :score_hole_13
      t.integer :score_hole_14
      t.integer :score_hole_15
      t.integer :score_hole_16
      t.integer :score_hole_17
      t.integer :score_hole_18

      t.timestamps
    end
  end
end
