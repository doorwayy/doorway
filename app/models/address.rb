# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  line1       :string(191)      default(""), not null
#  line2       :string(191)      default(""), not null
#  city        :string(191)      default(""), not null
#  state       :string(191)      default(""), not null
#  postal_code :string(191)      default(""), not null
#  country     :string(191)      default("USA"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  has_many :locations
end
