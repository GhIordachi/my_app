class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_type
      t.string :card_number
      t.string :cardholder_name
      t.string :expire
      t.integer :cvv
      t.bigint :user_id, null: false
      t.timestamps
    end
  end
end
