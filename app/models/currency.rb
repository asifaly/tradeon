class Currency < ApplicationRecord
  validates :code, presence: true, length: { minimum: 3, maximum: 3 }
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }
end
