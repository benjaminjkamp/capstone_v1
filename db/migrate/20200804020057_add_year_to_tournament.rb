class AddYearToTournament < ActiveRecord::Migration[6.0]
  def change
    add_column :tournaments, :year, :integer
  end
end
