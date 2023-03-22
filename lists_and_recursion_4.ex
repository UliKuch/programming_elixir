# Dave Thomas - Programming Elixir >= 1.6
# exercise on p.81

defmodule MyList do
  def span(from, from) do
    [from]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
