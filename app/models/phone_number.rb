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
  belongs_to :location, required: false

  validates_format_of :number, :with => /\A[+]1[.]\d{3}[.]\d{3}[.]\d{4}\z/

  def pretty_number
    groups= number.match(/(\d{1})[.](\d{3})[.](\d{3})[.](\d{4})/)
    groups[1]+ '-'+ groups[2]+ '-'+ groups[3]+ '-'+ groups[4]
  end
end
