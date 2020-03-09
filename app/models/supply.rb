class Supply < ApplicationRecord
  belongs_to :craft
  validates :description, presence: true
end
