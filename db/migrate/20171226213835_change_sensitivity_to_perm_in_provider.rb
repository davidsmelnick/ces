class ChangeSensitivityToPermInProvider < ActiveRecord::Migration[5.1]
  def change
    rename_column :providers, :sensitivity, :perm_id
  end
end
