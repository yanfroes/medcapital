class AddNameToWithdraws < ActiveRecord::Migration[5.2]
  def change
    add_column :withdraws, :name, :string
  end
end
