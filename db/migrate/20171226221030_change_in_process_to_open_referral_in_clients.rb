class ChangeInProcessToOpenReferralInClients < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :in_process, :open_referral
  end
end
