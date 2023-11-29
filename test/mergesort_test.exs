defmodule MergeSortTest do
  use ExUnit.Case
  doctest MergeSort

  test "sort list" do
    assert MergeSort.sort([4,3,2,9]) == [2,3,4,9]
  end

  test "sort list 2" do
    assert MergeSort.sort([15,7,9,8,45,10,6]) == [6,7,8,9,10,15,45]
  end

  test "sort empty list" do
    assert MergeSort.sort([]) == []
  end

  test "sort 1 element list" do
    assert MergeSort.sort([1]) == [1]
  end
end
