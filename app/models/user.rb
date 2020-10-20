class User < ActiveRecord::Base
    has_secure_password
    has_many :children

    validates :user_name, uniqueness: true, presence: true
    validates :password_digest, presence: true
end