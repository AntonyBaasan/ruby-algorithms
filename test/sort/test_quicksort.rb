require 'minitest/autorun'
require_relative '../../src/sort/quick_sort'

class TestQuickSort < MiniTest::Test
  def setup

  end

  # def test_sort_can_accept_only_array
  #
  # end

  def test_sort_array_1
    arr1 = [5, 4, 3]

    resultArray = Sort::QuickSort.sort(arr1)

    assert_equal(resultArray, [3, 4, 5])
  end

  def test_sort_array_2
    arr1 = [5, 4, 3, 1, 10, 9]

    resultArray = Sort::QuickSort.sort(arr1)

    assert_equal(resultArray, [1, 3, 4, 5, 9, 10])
  end

  def test_sort_array_of_char
    arr1 = ['b','d','c','a']

    resultArray = Sort::QuickSort.sort(arr1)

    assert_equal(resultArray, ['a','b','c', 'd'])
  end
end