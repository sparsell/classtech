class Device < ActiveRecord::Base
    belongs_to :child

    validates :device_type, uniqueness: true
end
