class Location < ActiveRecord::Base
  #has_many :children, class_name: "Location"
  #belongs_to :parent, class_name: "Location"
  has_many :ingredients
  has_ancestry
end
