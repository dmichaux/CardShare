class AddCardInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :title, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :phone, :string
  end
end
