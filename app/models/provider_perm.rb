class ProviderPerm < ApplicationRecord
  belongs_to :provider, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
end
