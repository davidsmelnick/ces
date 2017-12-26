class AddSpOrganizationIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sp_organization_id, :integer
  end
end
