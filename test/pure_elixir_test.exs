defmodule PureElixirTest do
  use ExUnit.Case
  doctest PureElixir

  test "greets the world" do
    assert PureElixir.hello() == :world
  end
end
