class AddFinalizedToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :finalized, :boolean
  end
end
