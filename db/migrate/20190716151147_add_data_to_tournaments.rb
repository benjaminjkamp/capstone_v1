class AddDataToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :red_team_2mantotal, :integer
    add_column :tournaments, :red_team_2manbb, :integer
    add_column :tournaments, :red_team_altshot, :integer
    add_column :tournaments, :red_team_stableford, :integer
    add_column :tournaments, :red_team_head2head, :integer
    add_column :tournaments, :blue_team_2mantotal, :integer
    add_column :tournaments, :blue_team_2manbb, :integer
    add_column :tournaments, :blue_team_altshot, :integer
    add_column :tournaments, :blue_team_stableford, :integer
    add_column :tournaments, :blue_team_head2head, :integer
  end
end
