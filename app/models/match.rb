class Match < ApplicationRecord
  belongs_to :client, :foreign_key => :sp_client_id, :primary_key => :sp_client_id, optional: true
  belongs_to :provider, :foreign_key => :sp_provider_id, :primary_key => :sp_provider_id , optional: true
  def self.exec_match(match_instance)
    match_provider = match_instance.sp_provider_id
    clients = Eligibility.where('sp_provider_id = ?',match_provider).pluck(:sp_client_id)
    client_ids = Client.where('sp_client_id IN (?) and in_process IS NULL',clients).order(:vi_score).reverse_order.pluck(:sp_client_id)
    client_id = client_ids[0]
    if client_id
      client = Client.where('sp_client_id = ?',client_id).first
      client.in_process = true
      client.save
      match_instance.sp_client_id = client_id
      match_instance.save
    else
      print('ended homelessness!!!')
    end
  end
end
