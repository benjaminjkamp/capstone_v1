class AddTotalScoreToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :total_score, :decimal, precision: 2, scale: 1
  end
end
