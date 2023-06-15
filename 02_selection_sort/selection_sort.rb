# frozen_string_literal: true

def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0

  arr.each_with_index do |e, i|
    if e < smallest
      smallest = e
      smallest_index = i
    end
  end

  smallest_index
end

def selection_sort(arr)
  result = []

  arr.length.times do
    smallest_index = find_smallest(arr)
    result << arr.delete_at(smallest_index)
  end

  result
end

puts selection_sort([5, 3, 6, 2, 10])
