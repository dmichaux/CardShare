class AddCompanyToRecipient < ActiveRecord::Migration[5.2]
  def change
    add_column :recipients, :company, :string
  end
end
