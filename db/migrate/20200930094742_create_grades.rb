class CreateGrades < ActiveRecord::Migration
    def change
      create_table :grades do |t|
        t.integer :grade
        t.integer :child_id
        t.integer :device_id
      end
    end
end
