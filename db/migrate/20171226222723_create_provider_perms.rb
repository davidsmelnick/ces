class CreateProviderPerms < ActiveRecord::Migration[5.1]
  def change
    create_table :provider_perms do |t|
      t.integer :sp_provider_id
      t.integer :perm_id

      t.timestamps
    end
  end
end
