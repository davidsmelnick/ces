class ChangeProjectToProvider < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :sp_project_id, :sp_provider_id
  end
end
