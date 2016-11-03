defmodule SimpleTokenTest do
  use ExUnit.Case

  test "without a given length argument" do
    assert 16 = SimpleToken.generate |> String.length
  end

  test "with a given positive integer length argument" do
    assert 24 = SimpleToken.generate(24) |> String.length
  end

  test "with a given negative integer length argument" do
    assert 24 = SimpleToken.generate(-24) |> String.length
  end

  test "with a given positive float length argument" do
    assert 24 = SimpleToken.generate(24.0) |> String.length
  end

  test "with a given negative float length argument" do
    assert 24 = SimpleToken.generate(-24.0) |> String.length
  end

  test "with an invalid length argument" do
    assert 16 = SimpleToken.generate("three") |> String.length
  end

end
