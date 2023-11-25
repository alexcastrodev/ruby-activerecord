class User < ApplicationRecord
  include IdVerifiable

  def self.ransackable_attributes(auth_object = nil)
    ["id", "id_verification_status", "name"]
  end
end
