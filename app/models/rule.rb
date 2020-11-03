class Rule < ActiveRecord::Base

    has_many :child_rules
    has_many :children, through: :child_rules

end