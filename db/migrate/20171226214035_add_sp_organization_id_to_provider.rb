class AddSpOrganizationIdToProvider < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :sp_organzation_id, :integer
  end
end
