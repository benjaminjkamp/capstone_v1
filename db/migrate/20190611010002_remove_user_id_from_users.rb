class RemoveUserIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :team_id
  end
end
