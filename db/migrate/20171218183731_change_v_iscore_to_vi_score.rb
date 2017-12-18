class ChangeVIscoreToViScore < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :VIscore, :vi_score
  end
end
