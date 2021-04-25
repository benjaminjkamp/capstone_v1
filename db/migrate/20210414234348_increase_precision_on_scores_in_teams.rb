class IncreasePrecisionOnScoresInTeams < ActiveRecord::Migration[6.0]
  def change
    change_column :teams, :score_hole_1, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_2, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_3, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_4, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_5, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_6, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_7, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_8, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_9, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_10, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_11, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_12, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_13, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_14, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_15, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_16, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_17, :decimal, :precision => 3, :scale => 1
    change_column :teams, :score_hole_18, :decimal, :precision => 3, :scale => 1
    
  end
end
