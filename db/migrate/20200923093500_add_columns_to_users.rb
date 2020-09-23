class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :password
      t.integer :grade
    end
  end
end
