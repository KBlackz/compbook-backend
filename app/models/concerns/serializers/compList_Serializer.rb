class Comp_ListSerializer < ActiveModel::Serializer 
    attributes :user_id, car_id, :user_note

    belong_to :home
    belong_to :user

end    