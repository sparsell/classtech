class Device < ActiveRecord::Base
    belongs_to :child
    belongs_to :user, through: :children
end
