class Shelter < ApplicationRecord
  has_many :genders
  has_many :locations
end
