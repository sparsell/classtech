class User < ActiveRecord::Base
    has_secure_password
    has_many :children

    validates :user_name, uniqueness: true, presence: true
    validates :password_digest, presence: true
    #can I use this? 
    # validates :children.name, uniqueness: true
end