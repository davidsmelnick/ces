class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.integer :SPID
      t.string :name
      t.string :sensitivity

      t.timestamps
    end
  end
end
