# Dave Thomas - Programming Elixir >= 1.6
# exercise on p.102

defmodule MyList do
  def flatten(list) do
    Enum.reverse(_flatten(list))
  end

  defp _flatten([]) do
    []
  end

  defp _flatten(non_list) when not is_list(non_list) do
    [non_list]
  end

  defp _flatten([head | tail]) do
    _flatten(tail) ++ _flatten(head)
  end
end
