class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true

  def self.names
    Ingredient.all.map{ |ingredient| ingredient.name }.sort
  end
end
