class CreateWithdraws < ActiveRecord::Migration[5.2]
  def change
    create_table :withdraws do |t|
      t.float :value
      t.string :bank
      t.integer :acc
      t.integer :agency
      t.integer :cpf
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
