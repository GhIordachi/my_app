class AddColumnsToUsersForClients < ActiveRecord::Migration[7.0]
  def up
    change_table :users do |t|
      if User.where(role: 'client').exists?
        t.string :nume
        t.string :adresa
        t.string :metoda_plata
      end
    end
  end

  def down
    remove_column :users, :nume, :string
    remove_column :users, :adresa, :string
    remove_column :users, :metoda_plata, :string
  end
end
