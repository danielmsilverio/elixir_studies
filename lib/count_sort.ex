defmodule CountSort do

  def sort(t), do: sort(t, %{})

  def sort([h | t], table) do
    sort(t, Map.put(table, h, (table[h] || 0) + 1))
  end

  def sort([], table) do
    Map.keys(table)
    |> Enum.map(&Enum.map(1..table[&1], fn _ -> &1 end))
    |> List.flatten()
  end
end
