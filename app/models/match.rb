class Match < ApplicationRecord
  belongs_to :client, :foreign_key => :sp_client_id, :primary_key => :sp_client_id, optional: true
  belongs_to :provider, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id , optional: true
end
