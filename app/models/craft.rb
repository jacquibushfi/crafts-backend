class Craft < ApplicationRecord
  has_many :supplies
  validates :name, presence: true
end
