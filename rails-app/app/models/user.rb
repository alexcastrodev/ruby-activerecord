class User < ApplicationRecord
  include IdVerifiable
  ENUMS = [:id_verification_status, :discount_type].freeze
  include LiberalEnum

  enum discount_type: {
    value: 0,
    percentage: 1,
  }
  def self.ransackable_attributes(auth_object = nil)
    ["id", "id_verification_status", "name"]
  end
end
