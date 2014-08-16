class Footnote < ActiveRecord::Base
  belongs_to :FoodDesc
  has_many :NutrData
end
