class NutData < ActiveRecord::Base
  belongs_to :FoodDesc
  belongs_to :Footnote
  has_many :DerivCode
  has_many :SourceCode
  has_many :NutrDef
  has_many :DataSrcLnk
end
