defmodule VarnumTest do
  use ExUnit.Case
  doctest Varnum

  test "retrieves current price as float" do
    assert is_float(Varnum.get_price())
  end

  test "bad URL returns zero price" do
    assert Varnum.get_price("https://badurl.abcxyz") == 0
  end
end
