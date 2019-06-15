class ChangeRecordToString < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :record_2017, :string
  end
end
