class Device < ActiveRecord::Base

    # belongs_to :child
    has_many :child_devices
    has_many :children, through: :child_devices
    

    # validates :device_type, uniqueness: true
end
