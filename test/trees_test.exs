defmodule TreeTest do
  use ExUnit.Case

  setup do
    [
      tree1: Trees.add(%{}, 5),
      tree2: %{} |> Trees.add(7) |> Trees.add(3) |> Trees.add(8) |> Trees.add(5)
    ]
  end

  test "add value", context do
    assert context.tree1 == %{value: 5, left: %{}, right: %{}}
  end

  test "values", context do
    assert Trees.values(context.tree2) == [3, 5, 7, 8]
  end

  test "sort list" do
    assert Trees.sort([4,3,2,9]) == [2,3,4,9]
  end

  test "sort list 2" do
    assert Trees.sort([15,7,9,8,45,10,6]) == [6,7,8,9,10,15,45]
  end

  test "sort empty list" do
    assert Trees.sort([]) == []
  end

  test "sort 1 element list" do
    assert Trees.sort([1]) == [1]
  end
end
