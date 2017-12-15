class Eligibility < ApplicationRecord
  belongs_to :client, :foreign_key => :sp_client_id, :primary_key => :sp_client_id 
  belongs_to :provider, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id 
end