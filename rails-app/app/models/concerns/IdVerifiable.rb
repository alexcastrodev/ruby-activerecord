module IdVerifiable
  extend ActiveSupport::Concern

  included do
    enum id_verification_status: { unverified: 0, verified: 1 }
  end
end