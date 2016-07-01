require 'minitest/autorun'
require_relative '../../src/sort/merge_sort'

class TestMergeSort < MiniTest::Test
  def setup

  end

  def test_sort_array_1
    arr1 = [5, 4, 3]

    resultArray = Sort::MergeSort.sort(arr1)

    assert_equal([3, 4, 5], resultArray)
  end

  def test_sort_array_2
    arr1 = [5, 4, 3, 1, 10, 9]

    resultArray = Sort::MergeSort.sort(arr1)

    assert_equal([1, 3, 4, 5, 9, 10], resultArray)
  end

  def test_sort_array_of_char
    arr1 = ['b', 'd', 'c', 'a']

    resultArray = Sort::MergeSort.sort(arr1)

    assert_equal(['a', 'b', 'c', 'd'], resultArray)
  end
end