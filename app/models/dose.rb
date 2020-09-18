class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient, :message => "presonalizar"
  # validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
