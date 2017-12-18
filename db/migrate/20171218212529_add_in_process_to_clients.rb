class AddInProcessToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :in_process, :boolean
  end
end
