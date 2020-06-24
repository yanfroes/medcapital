class AddUserToDeposits < ActiveRecord::Migration[5.2]
  def change
    add_reference :deposits, :user, foreign_key: true
  end
end
