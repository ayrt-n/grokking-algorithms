# frozen_string_literal: true

def quicksort(arr)
  return arr if arr.length < 2

  # Set up pivot and left/right arrays
  middle_index = arr.length / 2
  pivot = arr[middle_index]
  lower = []
  higher = []

  # Partition array elements around pivot
  arr[0...middle_index].each { |e| e < pivot ? lower << e : higher << e }
  arr[middle_index + 1..].each { |e| e < pivot ? lower << e : higher << e }

  # Return each sub array and the pivot sorted
  quicksort(lower) + [pivot] + quicksort(higher)
end

puts quicksort([9, 2, 8, 2, 10, 0, 6])
