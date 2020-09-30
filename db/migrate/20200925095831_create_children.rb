class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :device_id
      t.integer :grade_id
    end
  end
end
