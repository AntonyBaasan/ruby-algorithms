module Sort
  # Merge sort implementation.
  # Complexity: best N*logN, worst N*logN
  module MergeSort
    # Sorts the array using merge sort algorithm
    #
    # @param [Array] contents the contents to sort
    # @return [Array] the contents sorted
    def self.sort (arr)
      merge_sort arr
      # arr
    end

    private

    # Merge sort algorithm with top down split merge.
    #
    # @param [Array] arr the contents to sort
    # @return [Array] the contents sorted
    def self.merge_sort (list)
      # if recursion is at the end of division
      return list if list.size <=1

      middle = list.size / 2

      left = list[0, middle]
      right = list[middle, list.size]
      merge_arrays(merge_sort(left), merge_sort(right))
    end


    def self.merge_arrays (left, right)
      sorted = []

      until (left.empty? || right.empty?)
        if (left.first < right.first)
          sorted << left.shift
        else
          sorted << right.shift
        end
      end
      sorted.concat(left).concat(right)
    end
  end

end
