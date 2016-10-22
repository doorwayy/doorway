class Location < ApplicationRecord
  belongs_to :address
  belongs_to :shelter
  has_many :phone_numbers
end
