# frozen_string_literal: true

def recursive_sum(arr)
  return 0 if arr.empty?

  arr[0] + recursive_sum(arr[1..])
end

puts recursive_sum([2, 4, 6])
