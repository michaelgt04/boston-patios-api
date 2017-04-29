class Patio < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :neighborhood, presence: true
  validates :seats, numericality: true, allow_nil: true

end
