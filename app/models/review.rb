# Modèle de la classe review
class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: Array(0..5) }, numericality: { only_integer: true }
end
