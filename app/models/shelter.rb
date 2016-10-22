# == Schema Information
#
# Table name: shelters
#
#  id          :integer          not null, primary key
#  name        :string(191)      default(""), not null
#  href        :string(191)      default(""), not null
#  description :string(191)      default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Shelter < ApplicationRecord
  has_many :genders
  has_many :locations
end
