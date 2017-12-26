class ChangeOrganizationIdSpellingInProvider < ActiveRecord::Migration[5.1]
  def change
    rename_column :providers, :sp_organzation_id, :sp_organization_id
  end
end
