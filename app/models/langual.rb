class Langual < ActiveRecord::Base
  belongs_to :FoodDesc
  has_many :LangDesc
end
