class RenameClientIdInMatchToSpClientId < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :client_id, :sp_client_id
  end
end
