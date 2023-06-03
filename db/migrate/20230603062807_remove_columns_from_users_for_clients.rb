class RemoveColumnsFromUsersForClients < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :nume, :string
    remove_column :users, :adresa, :string
    remove_column :users, :metoda_plata, :string
  end
  
end
