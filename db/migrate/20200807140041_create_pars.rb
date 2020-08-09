class CreatePars < ActiveRecord::Migration[6.0]
  def change
    create_table :pars do |t|
      t.integer :hole
      t.integer :value
      t.integer :course_id

      t.timestamps
    end
  end
end
