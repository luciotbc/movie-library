module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :image_url, String, null: true
    field :user, UserType, null: true

    def user
      RecordLoader.for(User).load(object.user_id)
    end
  end
end 
