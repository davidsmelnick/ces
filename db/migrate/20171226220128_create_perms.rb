class CreatePerms < ActiveRecord::Migration[5.1]
  def change
    create_table :perms do |t|
      t.string :description

      t.timestamps
    end
  end
end
