class AddProjTypeIdToProvider < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :proj_type_id, :integer
  end
end
