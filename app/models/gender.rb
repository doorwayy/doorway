# == Schema Information
#
# Table name: genders
#
#  id          :integer          not null, primary key
#  description :string(191)      default("women"), not null
#  shelter_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Gender < ApplicationRecord
  belongs_to :shelter, required: false

  def self.method_missing *args, &block
    (
      args[0] && self.where(description: args[0].to_s).first
    ) || super
  end
end
