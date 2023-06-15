# frozen_string_literal: true

def binary_search(arr, item)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = arr[mid]

    return mid if guess == item

    guess < item ? low = mid + 1 : high = mid - 1
  end

  nil
end

array = [1, 3, 5, 7, 9]
p binary_search(array, 3)
p binary_search(array, -1)
