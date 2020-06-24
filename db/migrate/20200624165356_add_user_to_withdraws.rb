class AddUserToWithdraws < ActiveRecord::Migration[5.2]
  def change
    add_reference :withdraws, :user, foreign_key: true
  end
end
