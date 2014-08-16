class FoodDesc < ActiveRecord::Base
  has_many :FoodGroupDesc
  has_many :Footnote
  has_many :NutData
  has_many :Weight
  has_many :Langual
end
