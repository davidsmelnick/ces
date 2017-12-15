class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :project_id
      t.integer :client_id

      t.timestamps
    end
  end
end
