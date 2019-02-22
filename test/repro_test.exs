defmodule ReproTest do
  use ExUnit.Case
  doctest Repro

  test "greets the world" do
    assert Repro.hello() == :world
  end
end
