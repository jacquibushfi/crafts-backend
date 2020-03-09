class CraftSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :supplies
end
