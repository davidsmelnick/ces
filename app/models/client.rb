class Client < ApplicationRecord
  has_many :matches, :foreign_key => :sp_client_id, :primary_key => :sp_client_id 
  has_many :eligibilities, :foreign_key => :sp_client_id, :primary_key => :sp_client_id 
end
