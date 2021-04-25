class ChangePrecisionOfTotalScoreInTeams < ActiveRecord::Migration[6.0]
  def change
    change_column :teams, :total_score, :decimal, :precision => 4
  end
end
