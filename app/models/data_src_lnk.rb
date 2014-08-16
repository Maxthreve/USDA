class DataSrcLnk < ActiveRecord::Base
  belongs_to :NutData
  has_many :DataSrc
end
