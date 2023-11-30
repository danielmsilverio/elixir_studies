defmodule CountSortTest do
  use ExUnit.Case

  test "sort list" do
    assert CountSort.sort([4,3,2,9]) == [2,3,4,9]
  end

  test "sort list 2" do
    assert CountSort.sort([15,7,9,8,45,10,6]) == [6,7,8,9,10,15,45]
  end

  test "sort empty list" do
    assert CountSort.sort([]) == []
  end

  test "sort 1 element list" do
    assert CountSort.sort([1]) == [1]
  end
end
