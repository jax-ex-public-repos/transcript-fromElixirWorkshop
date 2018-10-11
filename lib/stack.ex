defmodule Stack do
  def new do
    spawn(fn -> loop([]) end)
  end

  def push(pid, val) do
    send(pid, {:push, val})
  end

  def loop(state) do
    new_state =
      recieve do
        {:push, val} -> [val | state]
      end
    loop(new_state)
  end
end
