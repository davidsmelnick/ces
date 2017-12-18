class ChangeProviderIdToSpProviderId < ActiveRecord::Migration[5.1]
  def change
    rename_column :eligibilities, :provider_id, :sp_provider_id
  end
end
