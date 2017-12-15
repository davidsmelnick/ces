class RenameSpidInProviderToSpProviderId < ActiveRecord::Migration[5.1]
  def change
    rename_column :providers, :SPID, :sp_provider_id
  end
end
