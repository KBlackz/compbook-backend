class UserSerializer < ActiveModel::Serializer 
    attributes :id, :username, :interest

  
    has_many :homes
    has_many :comp_lists

end