class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.integer :team_id
      t.integer :avg_gnc
      t.integer :avg_two_year
      t.integer :ryder_cup_wins
      t.integer :ryder_cup_losses
      t.integer :ryder_cup_ties
      t.integer :record_2017
      t.integer :handicap_low_net
      t.integer :handicap_skins

      t.timestamps
    end
  end
end
