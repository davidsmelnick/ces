class ChangeClientIdToSpClientId < ActiveRecord::Migration[5.1]
  def change
    rename_column :eligibilities, :client_id, :sp_client_id
  end
end
