class User < ActiveRecord::Base
    has_many :children
    # has_many :devices, :through => :children
    # belongs_to :grade, :through => :children
end