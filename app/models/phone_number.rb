# == Schema Information
#
# Table name: phone_numbers
#
#  id          :integer          not null, primary key
#  number      :string(191)      default(""), not null
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PhoneNumber < ApplicationRecord
  belongs_to :location
end
