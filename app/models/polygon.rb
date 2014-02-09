class Polygon < ActiveRecord::Base
  belongs_to :radThermModel
  
  belongs_to :geometry
  
  has_many :vertices
end
