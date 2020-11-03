class CreateChildRules < ActiveRecord::Migration
  def change
    create_table :child_rules do |t|
      t.integer :child_id 
      t.integer :rule_id 
    end
  end
end
