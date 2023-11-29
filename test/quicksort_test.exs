defmodule QuicksortTest do
  use ExUnit.Case
  doctest Quicksort

  test "sort list" do
    assert Quicksort.sort([4,3,2,9]) == [2,3,4,9]
  end

  test "sort list 2" do
    assert Quicksort.sort([15,7,9,8,45,10,6]) == [6,7,8,9,10,15,45]
  end

  test "sort empty list" do
    assert Quicksort.sort([]) == []
  end

  test "sort 1 element list" do
    assert Quicksort.sort([1]) == [1]
  end
end
