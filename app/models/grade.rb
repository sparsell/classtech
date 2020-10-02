class Grade < ActiveRecord::Base
    has_many :children
    has_many :users, through: :children
end
