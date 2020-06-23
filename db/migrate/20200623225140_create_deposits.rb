class CreateDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :deposits do |t|
      t.float :value
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
