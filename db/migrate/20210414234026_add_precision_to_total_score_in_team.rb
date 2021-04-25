class AddPrecisionToTotalScoreInTeam < ActiveRecord::Migration[6.0]
  def change
    def change
      change_column :teams, :total_score, :decimal, :precision => 4, :scale => 1
    end
  end
end
