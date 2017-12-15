class CreateEligibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :eligibilities do |t|
      t.integer :provider_id
      t.integer :client_id

      t.timestamps
    end
  end
end
