class AddTournamentIdToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :tournament_id, :integer
  end
end
