# Dave Thomas - Programming Elixir >= 1.6
# exercise on p.114

defmodule MyList do
  def primes(from, to) do
    for x <- span(from, to), is_prime(x), do: x
  end

  def is_prime(2) do
    true
  end

  def is_prime(int) do
    !Enum.any?(span(2, int - 1), fn value -> rem(int, value) == 0 end)
  end

  def span(from, from) do
    [from]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
