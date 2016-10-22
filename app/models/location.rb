# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  description :string(191)      default(""), not null
#  href        :string(191)      default(""), not null
#  address_id  :integer
#  shelter_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ApplicationRecord
  belongs_to :address
  belongs_to :shelter
  has_many :phone_numbers
end
