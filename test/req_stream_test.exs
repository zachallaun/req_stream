defmodule ReqStreamTest do
  use ExUnit.Case
  doctest ReqStream

  test "greets the world" do
    assert ReqStream.hello() == :world
  end
end
