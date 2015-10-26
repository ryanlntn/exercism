defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    downcased = String.downcase(sentence)
    words = String.split(downcased, ~r/[^\p{L}\d\-ö]+/, trim: true)
    counts = Enum.map(words, fn(w) -> { w, Enum.count(words, &(&1 == w)) } end)
    Enum.into(counts, %{})
  end
end
