defmodule Quicksort do
  def sort([]), do: []
  def sort([i]), do: [i]
  def sort([head | tail]) do

    left = Enum.filter(tail, &(&1 < head))
    right = Enum.filter(tail, &(&1 >= head))
    sort(left) ++ [head] ++ sort(right)
  end
end
