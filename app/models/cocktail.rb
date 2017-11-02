class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  before_destroy :saveable

  validates :name, uniqueness: true, presence: true
end
