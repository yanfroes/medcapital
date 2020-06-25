class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.decimal :value
      t.string :bank
      t.string :account
      t.string :agency
      t.string :cpf
      t.string :name
      t.integer :kind
      t.decimal :balance

      t.timestamps
    end
  end
end
