class Organization < ApplicationRecord
  has_many :providers, :foreign_key => :sp_organization_id, :primary_key => :sp_organization_id
  has_many :users, :foreign_key => :sp_organization_id, :primary_key => :sp_organization_id
end
