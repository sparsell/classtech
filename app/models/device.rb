class Device < ActiveRecord::Base

    has_many :child_devices
    has_many :children, through: :child_devices

end
