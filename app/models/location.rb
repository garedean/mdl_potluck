class Location < ActiveRecord::Base
  has_many :ingredients
  has_ancestry
end
