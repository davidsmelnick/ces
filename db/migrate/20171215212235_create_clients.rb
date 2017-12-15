class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.integer :SPID
      t.integer :VIscore
      t.integer :rank

      t.timestamps
    end
  end
end
