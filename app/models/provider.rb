class Provider < ApplicationRecord
  has_many :matches, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
  has_many :eligibilities, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
end
