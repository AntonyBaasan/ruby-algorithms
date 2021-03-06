module Sort
  # Quick sort implementation with Lomuto partition scheme.
  # Complexity: best N*logN, worst N^2
  module QuickSort
    # Sorts the array
    #
    # @param [Array] contents the contents to sort
    # @return [Array] the contents sorted
    def self.sort (arr)
      quick_sort_lomuta arr, 0, arr.count-1
      arr
    end

    private

    # Quick sort algorithm with Lomuto partition scheme.
    #
    # @param [Array] arr the contents to sort
    # @param [Array] low index of low(start) number
    # @param [Array] high index of high(end) number
    # @return [Array] the contents sorted
    def self.quick_sort_lomuta (arr, low, high)
      if (low < high)
        p = partition_lomuta(arr, low, high)

        quick_sort_lomuta(arr, low, p-1)
        quick_sort_lomuta(arr, p+1, high)
      end
    end

    def self.partition_lomuta (arr, low, high)
      pivot = arr[high]
      i = low
      j = low

      while (j < high)
        if (arr[j] <= pivot)
          arr[i], arr[j] = arr[j], arr[i]
          i = i + 1
        end
        j = j + 1;
      end
      arr[i], arr[high] = arr[high], arr[i]
      return i
    end
  end

end
