class RemoveSpProjTypeIdFromProviderAndProjType < ActiveRecord::Migration[5.1]
  def change
    remove_column :providers, :sp_proj_type_id
    remove_column :proj_types, :sp_proj_type_id
  end
end
