defmodule ConversationTest do
  use ExUnit.Case
  doctest Conversation

  test "greets the world" do
    assert Conversation.hello() == :world
  end
end
