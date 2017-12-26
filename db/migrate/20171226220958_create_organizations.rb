class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.integer :sp_organization_id
      t.string :name

      t.timestamps
    end
  end
end
