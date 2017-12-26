class DeletePermIdFromProvider < ActiveRecord::Migration[5.1]
  def change
    remove_column :providers, :perm_id
  end
end
