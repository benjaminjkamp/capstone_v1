class AddTeamToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :team_color, :string
  end
end
