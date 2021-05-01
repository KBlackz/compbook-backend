class User < ApplicationRecord
    has_many :homes
    has_many :complists, through: :homes

    has_secure_password

    validates :name, uniqueness: { case_sensitive: false }
    
end
