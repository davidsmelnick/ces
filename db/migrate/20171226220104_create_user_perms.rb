class CreateUserPerms < ActiveRecord::Migration[5.1]
  def change
    create_table :user_perms do |t|
      t.integer :user_id
      t.integer :perm_id

      t.timestamps
    end
  end
end
