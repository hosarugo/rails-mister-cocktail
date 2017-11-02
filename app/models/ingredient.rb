class Ingredient < ApplicationRecord
  has_many :doses

  before_destroy :saveable?

  validates :name, uniqueness: true, presence: true

  def saveable?
    unless self.doses.empty?
      return false
    end
  end
end
