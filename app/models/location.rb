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
  belongs_to :address, required: false
  belongs_to :shelter, required: false
  has_one :phone_number

  def href= arg
    raise 'Use the href on Shelter'
  end
end
