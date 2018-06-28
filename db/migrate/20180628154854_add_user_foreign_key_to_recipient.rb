class AddUserForeignKeyToRecipient < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipients, :user, foreign_key: true
  end
end
