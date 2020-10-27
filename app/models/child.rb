class Child < ActiveRecord::Base

    belongs_to :user
    belongs_to :grade
    has_many :child_devices
    has_many :devices, through: :child_devices

end