class ChildRule < ActiveRecord::Base
    belongs_to :child
    belongs_to :rule
end