class RenameSpidInClientToSpClientId < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :SPID, :sp_client_id
  end
end
