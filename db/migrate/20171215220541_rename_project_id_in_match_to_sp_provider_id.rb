class RenameProjectIdInMatchToSpProviderId < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :project_id, :sp_project_id
  end
end
