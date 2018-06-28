class AddCardSentAtToRecipient < ActiveRecord::Migration[5.2]
  def change
    add_column :recipients, :card_sent_at, :datetime
  end
end
