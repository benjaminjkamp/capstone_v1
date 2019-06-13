class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :par_hole_1
      t.integer :par_hole_2
      t.integer :par_hole_3
      t.integer :par_hole_4
      t.integer :par_hole_5
      t.integer :par_hole_6
      t.integer :par_hole_7
      t.integer :par_hole_8
      t.integer :par_hole_9
      t.integer :par_hole_10
      t.integer :par_hole_11
      t.integer :par_hole_12
      t.integer :par_hole_13
      t.integer :par_hole_14
      t.integer :par_hole_15
      t.integer :par_hole_16
      t.integer :par_hole_17
      t.integer :par_hole_18
      t.integer :hdcp_hole_1
      t.integer :hdcp_hole_2
      t.integer :hdcp_hole_3
      t.integer :hdcp_hole_4
      t.integer :hdcp_hole_5
      t.integer :hdcp_hole_6
      t.integer :hdcp_hole_7
      t.integer :hdcp_hole_8
      t.integer :hdcp_hole_9
      t.integer :hdcp_hole_10
      t.integer :hdcp_hole_11
      t.integer :hdcp_hole_12
      t.integer :hdcp_hole_13
      t.integer :hdcp_hole_14
      t.integer :hdcp_hole_15
      t.integer :hdcp_hole_16
      t.integer :hdcp_hole_17
      t.integer :hdcp_hole_18

      t.timestamps
    end
  end
end
