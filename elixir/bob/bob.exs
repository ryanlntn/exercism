defmodule Teenager do
  def hey(input) do
    input = String.strip(input)
    cond do
      String.length(input) == 0 ->
        "Fine. Be that way!"
      String.ends_with?(input, "?") ->
        "Sure."
      String.match?(input, ~r/\p{Lu}/) and String.upcase(input) == input ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end
end
