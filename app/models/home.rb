class Home < ApplicationRecord

    has_many :complists
    has_many :users, through: :complists
    
end
