class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true

  def list_doses
    doses.map { |dose| dose.ingredient.name }.join(', ')
  end
end
