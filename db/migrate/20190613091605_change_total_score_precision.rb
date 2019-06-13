class ChangeTotalScorePrecision < ActiveRecord::Migration[5.2]
  def change
    change_column :teams, :total_score, :decimal, precision: 3, scale: 1
  end
end
