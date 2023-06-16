# frozen_string_literal: true

def recursive_count(arr)
  return 0 if arr.empty?

  1 + recursive_count(arr[1..])
end

puts recursive_count([1, 2, 3, 4])
puts recursive_count([])
puts recursive_count([1, 2])
