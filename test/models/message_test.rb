require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "should not create message with no author" do
    message = Message.new
    message.recipient = "Arnaud"
    message.visibility = "public"
    message.text = "This is a test message"
    assert !message.save, "Created message with no author"
  end

  test "should not create message with no recipient" do
    message = Message.new
    message.author = "Arnaud"
    message.visibility = "public"
    message.text = "This is a test message"
    assert !message.save, "Created message with no recipient"
  end
end
