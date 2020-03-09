class SupplySerializer < ActiveModel::Serializer
  attributes :id, :craft_id, :description, :vendor, :price
end
