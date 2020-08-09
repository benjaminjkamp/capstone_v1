class AddNetScoresToScore < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :net_score, :integer
  end
end
