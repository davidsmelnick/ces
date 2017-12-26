class CreateProjTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :proj_types do |t|
      t.integer :proj_type_id
      t.string :description
      t.integer :service_code

      t.timestamps
    end
  end
end
