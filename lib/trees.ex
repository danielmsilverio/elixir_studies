defmodule Trees do

  def add(%{value: v, left: l, right: r}, value) when value <= v do
    %{value: v, left: add(l, value), right: r}
  end
  def add(%{value: v, left: l, right: r}, value) when value > v do
    %{value: v, left: l, right: add(r, value)}
  end
  def add(%{}, value), do: %{value: value, left: %{}, right: %{}}

  def values(%{value: value, left: left, right: right}) do
    values(left) ++ [value | values(right)]
  end

  def values(%{}), do: []

  def sort(list) do
    list
    |> List.foldl(%{}, &Trees.add(&2, &1))
    |> values()
  end
end
