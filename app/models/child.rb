class Child < ActiveRecord::Base

    belongs_to :user
    belongs_to :grade
    has_many :devices

end