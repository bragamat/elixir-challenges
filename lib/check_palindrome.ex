defmodule Palindrome do

  def check(word) do
    word = String.graphemes(word)
    word == Enum.reverse(word)
  end
end