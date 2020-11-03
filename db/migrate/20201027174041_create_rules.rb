class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :rule_name
    end
  end
end