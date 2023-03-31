class HeropowerNewPowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :superpower

  belongs_to :hero
  belongs_to :power
end
