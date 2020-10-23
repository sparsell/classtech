class ChildDevice < ActiveRecord::Base
    belongs_to :child
    belongs_to :device
end