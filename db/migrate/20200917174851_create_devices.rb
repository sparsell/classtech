class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :type
      t.boolean :limit
      t.boolean :can_text

      t.timestamps null: false
    end
  end
end
