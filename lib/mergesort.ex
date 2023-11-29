defmodule MergeSort do

  def sort([]), do: []
  def sort([i]), do: [i]

  def sort(list) do
    len = round(length(list) / 2)
    {left, right} = Enum.split(list, len)
    merge(sort(left), sort(right))
  end

  defp merge([], []), do: []
  defp merge([], list), do: list
  defp merge(list, []), do: list
  defp merge([h1|t1], [h2|t2]) when h1 < h2 do
    [ h1 | merge(t1, [h2|t2])]
  end
  defp merge([h1|t1], [h2|t2]) when h1 >= h2 do
    [ h2 | merge([h1|t1], t2)]
  end

end
