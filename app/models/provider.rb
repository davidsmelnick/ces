class Provider < ApplicationRecord
  has_many :matches, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
  has_many :eligibilities, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
  belongs_to :organization, :foreign_key => :sp_organization_id, :primary_key => :sp_organization_id
  belongs_to :proj_type
  has_one :provider_perm, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id
end
