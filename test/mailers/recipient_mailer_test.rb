require 'test_helper'

class RecipientMailerTest < ActionMailer::TestCase
  test "card" do
    mail = RecipientMailer.card
    assert_equal "Card", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
