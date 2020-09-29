class Grade < ActiveRecord::Base
    belongs_to :child
    has_many :children
    has_many :users, through: :children
end
