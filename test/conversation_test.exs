defmodule ConversationTest do
  use ExUnit.Case
  doctest Conversation

  test "first bar" do
    stack = Conversation.new
    |> IO.inspect
    assert [Conversation.pop(stack)] == [:bar]
    Conversation.pop(stack)
  end

  test "second foo" do
    stack = Conversation.new
    Conversation.pop(stack)
    assert [Conversation.pop(stack)] == [:foo]
    IO.puts('end')
  end

  test "third, bar" do
    stack = Conversation.new
    Conversation.pop(stack)
    Conversation.pop(stack)
    assert [Conversation.pop(stack)] == [:bar]
    IO.puts('end')
  end

  test "fourth, error" do
    stack = Conversation.new
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
    assert [Conversation.pop(stack)] == [:foo]
    IO.puts('end')
  end

  test "fifth, error" do
    stack = Conversation.new
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
    assert [Conversation.pop(stack)] == [:ok]
    IO.puts('end')
  end

  test "Conversation.iCanDoStuffAllTheStuffButYouNoSee" do
    assert [Conversation.iCanDoStuffAllTheStuffButYouNoSee] == [:ok]
    IO.puts('end')
  end
  
end
