module IdVerifiable
  extend ActiveSupport::Concern

  included do
    attribute :id_verification_status, :integer
    enum id_verification_status: { unverified: 0, verified: 1 }
  end
end